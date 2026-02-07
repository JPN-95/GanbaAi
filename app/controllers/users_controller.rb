class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @tests = current_user.tests
    @total_available_tests = Test.count
  end

  def dashboard
  @user = current_user
  @tests = current_user.tests
  @total_available_tests = Test.count

  @averages = @tests.group(:category).average(:score) || {}

  @completed_count = @tests.count

  ['Vocabulary', 'Kanji', 'Grammar', 'Reading'].each do |cat|
    @averages[cat] = @averages[cat] ? @averages[cat].round(0) : 0
    end
  end

  def progress
    # user_correct_answers = @question.

  end

  # def set_time_zone
  #   Time.zone = current_user.time_zone
  # end
end

#   def set_time_zone
#     Time.zone = current_user.time_zone if current_user&.time_zone.present?
#   end
# end
