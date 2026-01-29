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

User.create!( email: "patnew1@gmail.co", password:"bigsecret", username:"lol")

Test.create!( title: "cool first test", category:"grammar", user_id:1)
Test.create!( title: "mid second test", category:"vocab", user_id:1)

Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:1)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:1)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:1)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:1)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:1)

Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:2)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:2)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"Answer 2",
  test_id:2)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:2)
Question.create!(
  question: "Lorem ipsum dolor sit amet consectetur adipiscing elit.",
  generated_answers:["Dolor sit amet consectetur adipiscing elit quisque faucibus.", "Answer 2"],
  correct_answer:"Answer 2",
  user_answer:"",
  test_id:2)
