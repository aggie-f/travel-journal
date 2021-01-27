# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Destroying all data..."
Category.destroy_all
Trip.destroy_all
User.destroy_all
puts "Creating new users..."
user1 = User.create(email: "email@email.com", password: "password", name: "Karo")
user2 = User.create(email: "agatafilus@gmail.com", password: "password", name: "Agata")
puts "Creating new trips..."
trip1 = Trip.create(owner: user1, destination: "Zanzibar", start_date: "12/02/2021", end_date:"20/02/2021")
trip2 = Trip.create(owner: user2, destination: "Spain", start_date: "21/02/2021", end_date:"28/02/2021")
puts "Creating categories..."
category_names = ["Food", "Places", "Side Notes"]
  category_names.each do | name |
      Category.create!(
        name: name
       )
  end
puts "Creating DB finished!"