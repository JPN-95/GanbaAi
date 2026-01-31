class QuestionsController < ApplicationController
  before_action :set_test, only: [:edit, :update]
  before_action :set_question, only: [:edit, :update]

  def edit
  end

  def update
    if @question.update(question_params)
      redirect_to test_path(@test), notice: "Answer saved!"
    else
      render :edit, status: :unprocessable_entity
    end
  end

  private

  def set_test
    @test = Test.find(params[:test_id])
  end

  def set_question
    @question = @test.questions.find(params[:id])
  end

  def question_params
    params.require(:question).permit(:user_answer)
  end
end
