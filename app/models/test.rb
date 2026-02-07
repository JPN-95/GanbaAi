class Test < ApplicationRecord
  belongs_to :user
  has_many :questions
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ["Vocabulary", "Grammar", "Reading", "Kanji"]}
  validates :level, presence: true, inclusion: { in: ["N1", "N2", "N3", "N4", "N5"]}

  def complete?
    !questions.where(user_answer: "").exists?
  end

  def score
    correct_count = questions.where("user_answer = correct_answer").count
    total_count = questions.count
    return 0 if total_count == 0
    (correct_count.to_f / total_count.to_f * 100).round(2)
  end
end
