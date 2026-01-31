# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or create!d alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create!_by!(name: genre_name)
#   end
puts "creating db:)"
Question.destroy_all
Test.destroy_all
User.destroy_all

questions = ["lorum ipsum?", "how many provinces in canada", "whats your name?", "whats your fav color?"]
answers = ["answer a", "answer b", "answer c", "answer d"]

patrick = User.create!(email: "patnew1@gmail.co", password:"bigsecret", username:"lol")
katie = User.create!( email: "ru1eBr1tania1@gmail.co.uk", password:"crumpet", username:"uk_swag_tea")

test1 = Test.create!(title:"Vocab N5 Test", category: "Vocabulary", user:patrick)
test2 = Test.create!( title: "Unfinished Grammar Test", category:"Grammar", user:patrick)

5.times do |x|
  Question.create!(
    question: questions.sample,
    generated_answers: answers,
    correct_answer: answers.sample,
    user_answer: answers.sample,
    test: test1
  )
end

5.times do |x|
  Question.create!(
    question: questions.sample,
    generated_answers: answers,
    correct_answer: answers.sample,
    user_answer: "",
    test: test2
  )
end

puts "Created #{User.count} User, #{Test.count} Tests, and #{Question.count} Questions"
