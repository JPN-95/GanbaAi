class UsersController < ApplicationController
  before_action :set_time_zone, if: :user_signed_in?

  def show
    @user = current_user
  end

  def dashboard
    @tests = Test.where(user_id: current_user.id)
    @questions = Question.where(test_id: @tests.ids)
    @counter = 1

    @averages = {}
    ['vocabulary', 'kanji', 'grammar', 'reading'].each do |cat|
      cat_tests = @tests.where(category: cat)
      @averages[cat] = calculate_average(cat_tests)
    end
  end

  def progress
  end

  private

  def set_time_zone
    Time.zone = current_user.time_zone if current_user.time_zone.present?
  end

  def calculate_average(tests)
    return 0 if tests.empty?

    total_questions = 0
    total_correct = 0

    tests.each do |test|
      total_questions += test.questions.count
      total_correct += test.questions.where(correct: true).count
    end

    return 0 if total_questions == 0
    ((total_correct.to_f / total_questions) * 100).round(1)
  end
end
