# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

require 'faker'

User.delete_all

users = []



10.times do
  user = User.create(first_name: Faker::TvShows::NewGirl.character,last_name: Faker::TvShows::GameOfThrones.house, email: "anonymous@yopmail.com")
end