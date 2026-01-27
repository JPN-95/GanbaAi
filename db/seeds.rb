# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "creating db:)"

User.new(id:1, email: "patnew1@gmail.co", password:"bigsecret", username:"lol")
Test.new(id:1, title: "grammar", user_id:1)
Test.new(id:2, title: "vocab", user_id:1)
Question.new(id:1, question: "", generated_answers:[], user_answer:"", test_id:1)
