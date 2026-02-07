class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
    @tests = current_user.tests
    @total_available_tests = Test.count
  end

  def dashboard
    # fetch the user's tests
    @user = current_user
    @tests = current_user.tests
    @counter = 1

    @total_available_tests = Test.count

    # calculate the averages using the score model method Katie wrote
    @averages = {}
    ['Vocabulary', 'Kanji', 'Grammar', 'Reading'].each do |cat|
      cat_tests = @tests.where(category: cat)

      if cat_tests.any?
        # sum up the scores from each test and divide by the number of tests
        total_score = cat_tests.sum { |test| test.score }
        @averages[cat] = (total_score / cat_tests.count).round(1)
      else
        @averages[cat] = 0
      end
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
