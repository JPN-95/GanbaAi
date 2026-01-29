# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create!_by!(name: genre_name)
#   end
puts "Cleaning database..."

Question.destroy_all
Test.destroy_all
User.destroy_all

puts "Creating user..."
user = User.create!(
  email: "patnew1@gmail.co",
  password: "bigsecret",
  username: "lol"
)

test_data = [
  { title: "Cool First Test", category: "Grammar" },
  { title: "Mid Second Test", category: "Vocabulary" }
]

test_data.each do |data|

  test = user.tests.create!(
    title: data[:title],
    category: data[:category]
  )

  5.times do |i|
    answers = ["Answer A", "Answer B", "Answer C", "Answer D"]

    test.questions.create!(
      question: "Question #{i + 1}: What is the meaning of Lorem Ipsum?",
      generated_answers: answers,
      correct_answer: answers.sample,
      user_answer: "",
    )
  end
end

finished_test = user.tests.create!(
  title: "Finished Vocab Test",
  category: "Vocabulary"
)
5.times do |i|
  answers = ["Answer A", "Answer B", "Answer C", "Answer D"]

  finished_test.questions.create!(
    question: "Question #{i + 1}: What is the meaning of Lorem Ipsum?",
    generated_answers: answers,
    correct_answer: answers.sample,
    user_answer: answers.sample,
  )
end

puts "Success! Created #{Test.count} tests and #{Question.count} questions."
