class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])]
    # @user = User.find(current_user)
  end
  def dashboard
    @tests = Test.where(user_id: current_user.id)
    @questions = Question.where(test_id: @tests.ids)
    @counter = 1
  end

  def progress
    # user_correct_answers = @question.

  end

  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
