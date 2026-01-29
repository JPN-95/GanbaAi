class Test < ApplicationRecord
  belongs_to :user
  has_many :questions
  validates :title, presence: true
  validates :category, presence: true, inclusion: { in: ["Vocabulary", "Grammar", "Reading", "Kanji"]}

  def complete?
    !questions.where(user_answer: "").exists?
  end
end
