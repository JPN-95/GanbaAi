require 'json'
class TestsController < ApplicationController

  before_action :set_test, only: [:show]

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
    category = params[:category]
    # system_prompt = <<~PROMPT

    #   PROMPT
    user_prompt = <<~PROMPT
      You are an expert academic examiner for the Japanese Language Proficiency Test.
      Your task is to generate 5 high-quality unambiguous Vocabulary SENTENCE-COMPLETION questions for JLPT N4 relating to daily life for the exam.
      You must respond ONLY with a JSON object. No conversational text. The
      test should be N level appropriate. Each question must have enough
      context so that only one answer is logically correct. Wrong answers should
      be related to the topic but clearly wrong in the specific grammatical or logical context of the sentence.
      The questions should only be about the given category.
      Use only parenthesis and brackets, not 「」。''. Vocabulary test's generated_answers should all be unique words and not
      conjugations of the same word.
      N5: One is able to read and understand typical expressions and sentences written in hiragana, katakana, and basic kanji.
      N4: One is able to read and understand passages on familiar daily topics written in basic vocabulary and kanji.
      N3: One is able to read and understand written materials with specific contents concerning everyday topics. One is also able to grasp summary information such as newspaper headlines. In addition, one is also able to read slightly difficult writings encountered in everyday situations and understand the main points of the content if some alternative phrases are available to aid one’s understanding.
      N2: One is able to read materials written clearly on a variety of topics, such as articles and commentaries in newspapers and magazines as well as simple critiques, and comprehend their contents. One is also able to read written materials on general topics and follow their narratives as well as understand the intent of the writers.
      N1: One is able to read writings with logical complexity and/or abstract writings on a variety of topics, such as newspaper editorials and critiques, and comprehend both their structures and contents. One is also able to read written materials with profound contents on various topics and follow their narratives as well as understand the intent of the writers comprehensively.
      Each question will have a 4 generated_answers and 1 correct_answer among them. Ensure that 3 of the options are
      unmistakably incorrect based on the sentence's context. There should only be one explicit answer.
      Format output will be as follows:
      {
        "title": "A simple title accurately joining the input title:#{params[:title]} and input category: #{category}",
        "questions": [
          {
            "question": Question text here?",
            "generated_answers":["Answer 1", "Answer 2", "Answer 3", "Answer 4"],
            "correct_answer": "The exact string from the array which is correct"
          }
        ]
      }
    PROMPT

    # response = RubyLLM.chat.with_instructions(system_prompt).ask(user_prompt)
    response = RubyLLM.chat.ask(user_prompt)
    raw_content = response.content
    response_hash = JSON.parse(raw_content, symbolize_names: true)

    @test = Test.new(title: response_hash[:title], category: params[:category], user_id: current_user.id)


    if @test.save
    response_hash[:questions].each do |q|
      Question.create(question: q[:question], generated_answers: q[:generated_answers], correct_answer: q[:correct_answer], user_answer: "", test: @test)
    end
      redirect_to test_path(@test)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :category, :status)
  end

end
