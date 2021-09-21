# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
User.destroy_all
Restaurant.destroy_all
puts "Creating .."

user1 = User.create(first_name: "Ilyas", last_name: "Ovayurt", password: "password", email: "ilyas@ilyas.com")
user2 = User.create(first_name: "Begum", last_name: "Ozpeker", password: "password", email: "begum@begum.com")
user3 = User.create(first_name: "Aziz", last_name: "Alansari", password: "password", email: "aziz@aziz.com")

restaurant1 = Restaurant.create!(name: "Vogue Restaurant and Bar", location: "Besiktas, Istanbul, Turkey", rating: 4.4, speciality: "International", capacity: 150)
restaurant2 = Restaurant.create!(name: "Sunset Grill and Bar", location: "Besiktas, Istanbul, Turkey", rating: 4.3, speciality: "Mediterranean", capacity: 170)
restaurant3 = Restaurant.create!(name: "Parle", location: "Besiktas Zorlu Center, Istanbul ,Turkey", rating: 4.2, speciality: "International Gourmet", capacity: 50)

[restaurant1, restaurant2, restaurant3].each do |restaurant|
  puts "Created #{restaurant.name}"
end

puts "Finished!"
