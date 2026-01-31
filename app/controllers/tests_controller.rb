require 'json'
class TestsController < ApplicationController

  before_action :set_test, only: [:show]

  def index
    @tests = Test.all
  end

  def show
  end

  def new
    @test = Test.new
  end

  def create
    category = params[:category]
    system_prompt = <<~PROMPT
      You are an expert academic examiner for the Japanese Language Proficiency Test.
      Your task is to generate high-quality unambiguous SENTENCE-COMPLETION questions for the exam.
      You must respond ONLY with a JSON object. No conversational text. The
      test should be N level appropriate. Crucially, each question must have enough
      context so that only one answer is linguistically correct. Distractors should
      be related to the topic but clearly wrong in the specific grammatical or logical context of the sentence.
      The questions should only be about the given category.
      Use only parenthesis and brackets, not 「」。. Vocabulary test's generated_answers should all be unique words and not
      conjugations of the same word.
    PROMPT
    user_prompt = <<~PROMPT
      Create a test about JLPT N5 Vocabulary relating to office language for the Japanese Language Proficiency Test [JLPT]".
      Include 5 questions.
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

    response = RubyLLM.chat.with_instructions(system_prompt).ask(user_prompt)
    raw_content = response.content
    response_hash = JSON.parse(raw_content, symbolize_names: true)
    puts response_hash
    puts response_hash[:title]
    response_hash[:questions].each do |q|
      puts q[:question]
      puts q[:generated_answers]
    end
  #   @test = Test.new(test_params)

  #   if @test.save
  #     redirect_to test_path(@test)
  #   else
  #     render :new, status: :unprocessable_entity
  #   end
  end

  private

  def set_test
    @test = Test.find(params[:id])
  end

  def test_params
    params.require(:test).permit(:title, :category)
  end

end
