class UsersController < ApplicationController
  before_action :authenticate_user!

  def show
    @user = current_user
  end

  def dashboard
    # fetch the user's tests
    @tests = current_user.tests
    @counter = 1

    # calculate the averages using the score model method Katie wrote
    @averages = {}
    ['vocab', 'kanji', 'grammar', 'reading'].each do |cat|
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
  end
end

#   def set_time_zone
#     Time.zone = current_user.time_zone if current_user&.time_zone.present?
#   end
# end
