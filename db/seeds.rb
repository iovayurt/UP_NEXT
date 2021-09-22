# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
OrderItem.destroy_all
Order.destroy_all
User.destroy_all
FoodItem.destroy_all
Restaurant.destroy_all
puts "Creating .."

user1 = User.create!(first_name: "Ilyas", last_name: "Ovayurt", password: "password", email: "ilyas@ilyas.com")
user2 = User.create!(first_name: "Begum", last_name: "Ozpeker", password: "password", email: "begum@begum.com")
user3 = User.create!(first_name: "Aziz", last_name: "Alansari", password: "password", email: "aziz@aziz.com")

restaurant1 = Restaurant.create!(name: "Vogue Restaurant and Bar",
                                 location: "Besiktas, Istanbul, Turkey",
                                 rating: 4.4,
                                 speciality: "International",
                                 capacity: 150)
restaurant2 = Restaurant.create!(name: "Sunset Grill and Bar",
                                 location: "Besiktas, Istanbul, Turkey",
                                 rating: 4.3,
                                 speciality: "Mediterranean",
                                 capacity: 170)
restaurant3 = Restaurant.create!(name: "Parle",
                                 location: "Besiktas, Istanbul, Turkey",
                                 rating: 4.2,
                                 speciality: "International Gourmet",
                                 capacity: 50)

[restaurant1, restaurant2, restaurant3].each do |restaurant|
  puts "Created #{restaurant.name}"
end

#create 30 food items 10 for each resto

# Food items for restaurant1
restaurant1_food_item_names = [
  'Hamburger',
  'Waldorf Salad'
]
restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]
restaurant_food_item_info = [
  'vegan',
  'has nats',
  'pork'
]
restaurant1_food_item_names.each do |name|
  FoodItem.create!(name: name, rating: 4, price: 5,
                   category: restaurant_food_item_category.sample,
                   description: restaurant_food_item_info.sample,
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

#create 10 9 orders 3 per resto

#Restaurant.all.each do |restaurant|
  #3.times do
    # pick one random user
    #user = User.all.sample
    #order = Order.create!(restaurant: restaurant,
                          #user: user
    #)

    # Now create a few order items for the order
    #rand(1..3).times do
      # Create an OrderItem...
    #end
  #end
#end
# each order should have 1-3 order items
puts "Finished!"
