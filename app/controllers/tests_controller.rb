require 'json'
class TestsController < ApplicationController

  before_action :set_test, only: [:show, :destroy]

  PDF_MAPPING = {
    "N1" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360748/n1_vocabulary_kdg6ku.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360747/n1_grammar_dtpel4.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360748/n1_reading_hxphu8.pdf",
      "Kanji" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770434536/N1_Kanji_aj66av.pdf"
    },
    "N2" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770361089/N2V_s2wxza.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770361088/N2G_rn5anh.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N3R_p1nbgk.pdf",
      "Kanji" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770434538/N2_Kanji_bxqhq2.pdf"
    },
    "N3" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432594/N3V_arhoem.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N3G_njpefv.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N3R_p1nbgk.pdf"
    },
    "N4" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N4V_lirssk.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N4G_jbjv0n.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432592/N4R_f6fmvy.pdf"
    },
    "N5" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N5V_slcvqs.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N5G_g2xrcg.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770432593/N5R_camhaw.pdf"
    },
  }.freeze

  def index
    @tests = Test.all

    # if params level is in the URL, filter
    if params[:level].present?
      @tests = @tests.where(level: params[:level])
    end

    if params[:category].present?
      @tests = @tests.where(category: params[:category])
    end

    if params[:status].present?
      if params[:status] == "Complete"
        @tests = @tests.select { |test| test.complete? }
      elsif params[:status] == "Incomplete"
        @tests = @tests.reject { |test| test.complete? }
      end
    end
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    test_data = params[:test]
    level    = test_data[:level]
    category = test_data[:category]
    title = test_data[:title]

    gemini = RubyLLM.chat(model: "gemini-2.0-flash")


    if category === "Reading"
    user_prompt = <<~PROMPT
        Using the content of the PDF create a unique 5 question test.
        The test should not be just a copy of the PDF questions.
        The questions should reflect the difficulty of the PDF questions
        The questions should be the appropriate JLPT N#{level} and the PDF question level.
        in this exact JSON template:
        {
          "title": "#{title} - N#{level}:#{category}",
          "questions": [
            {
              "question": Question text here? Text should be in its original language",
              "generated_answers":["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
              "correct_answer": "The exact string from the array which is correct",
              "context": "The exact and ENTIRE Paragraph as a string that accompanies a reading question in its original language."
            }
          ]
        }
        Return the JSON only and include no other symbols, conversational text nor backticks.
        Use plain text, No unicode escapes, No special formatting, No HTML.
        For emphasis use simple markdown like * word * if needed
      PROMPT
    else
      user_prompt = <<~PROMPT
        Using the content of the PDF create a unique 5 question test.
        The test should not be just a copy of the PDF questions.
        The questions should reflect the difficulty of the PDF questions
        The questions should be the appropriate JLPT N#{level} and the PDF question level.
        in this exact JSON template:
        {
          "title": "#{title} - N#{level}:#{category}",
          "questions": [
            {
              "question": Question text here? Text should be in its original language",
              "generated_answers":["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
              "correct_answer": "The exact string from the array which is correct"
            }
          ]
        }
        Return the JSON only and include no other symbols, conversational text nor backticks.
        Use plain text, No unicode escapes, No special formatting, No HTML.
        For emphasis use simple markdown like * word * if needed
      PROMPT
    end

    pdf_url = PDF_MAPPING.dig(level, category)
    response = gemini.ask(user_prompt, with:{pdf:pdf_url})
    raw_content = response.content.strip
    cleaned_json = raw_content.gsub(/```json|```/, '').strip
    response_hash = JSON.parse(cleaned_json, symbolize_names: true)

    @test = Test.new(title: title, category: category, level: level, user_id: current_user.id)

    if @test.save
    response_hash[:questions].each do |q|
      Question.create(question: q[:question], generated_answers: q[:generated_answers], correct_answer: q[:correct_answer], context: q[:context], user_answer: "", test: @test)
    end
      redirect_to test_path(@test)
    else
      render :new, status: :unprocessable_content
    end
  end

  def destroy
    @test.destroy
      redirect_to tests_path, notice: "Test was successfully deleted", status: :see_other
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :category, :level)
  end

end
