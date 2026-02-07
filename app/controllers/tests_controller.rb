require 'json'
class TestsController < ApplicationController

  before_action :set_test, only: [:show]

  PDF_MAPPING = {
    "N1" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360748/n1_vocabulary_kdg6ku.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360747/n1_grammar_dtpel4.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770360748/n1_reading_hxphu8.pdf"
    },
    "N2" => {
      "Vocabulary" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770361089/N2V_s2wxza.pdf",
      "Grammar" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770361088/N2G_rn5anh.pdf",
      "Reading" => "https://res.cloudinary.com/dbz1rqurv/image/upload/v1770361088/N2R_njilvk.pdf"
    }
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

    user_prompt = <<~PROMPT
      Using the content of the PDF create a 5 question test in this exact JSON template:
      {
        "title": "#{title} - N#{level}:#{category}",
        "questions": [
          {
            "question": Question text here?",
            "generated_answers":["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
            "correct_answer": "The exact string from the array which is correct"
          }
        ]
      }
      Return the JSON only and include no other symbols, conversational text nor backticks
    PROMPT
    pdf_url = PDF_MAPPING.dig(level, category)
    response = gemini.ask(user_prompt, with:{pdf:pdf_url})
    raw_content = response.content.strip
    cleaned_json = raw_content.gsub(/```json|```/, '').strip
    response_hash = JSON.parse(cleaned_json, symbolize_names: true)

    @test = Test.new(title: title, category: category, level: level, user_id: current_user.id)


    if @test.save
    response_hash[:questions].each do |q|
      Question.create(question: q[:question], generated_answers: q[:generated_answers], correct_answer: q[:correct_answer], user_answer: "", test: @test)
    end
      redirect_to test_path(@test)
    else
      render :new, status: :unprocessable_content
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :category, :level)
  end

end
