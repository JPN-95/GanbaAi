class Question < ApplicationRecord
  belongs_to :test

  def correct?
    user_answer == correct_answer
  end
end
