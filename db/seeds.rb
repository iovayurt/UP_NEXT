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
                                 rating: 4.2,
                                 speciality: "Mediterranean",
                                 capacity: 170)
restaurant3 = Restaurant.create!(name: "Parle",
                                 location: "Besiktas, Istanbul, Turkey",
                                 rating: 4.5,
                                 speciality: "International Gourmet",
                                 capacity: 50)

[restaurant1, restaurant2, restaurant3].each do |restaurant|
  puts "Created #{restaurant.name}"
end

#create 30 food items 10 for each resto

# Food items for restaurant1
restaurant1_main_food_items = [
  'American Burger',
  'Vegetarian Meatballs',
  'Spaghetti with Bolognese Sauce',
  'Mushroom Spaghetti',
  'Roasted Eggplant Pasta',
  'Mixed Pizza',
  'Roast Beef Pizza',
  'Chicken Schnitzel',
  'Mexican Chicken',
  'Chicken Curry Salad',
  'Greek Salad'


]
restaurant1_desserts = [
  'Mr. Joe',
  'Pyramid Mosaic Cake'


]
restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]
restaurant_main_food_item_info = [
  'Grilled meatballs, onion rings, tomatoes, lettuce, pickles in burger bread',
  'Breaded special homemade vegetable meatballs with garnish',
  'Tomato sauce with minced meat, parmesan cheese',
  'Mushroom, parmesan Cheese',
  'Roasted eggplant, parmesan cheese',
  'Special dough, sauce, pizza cheese, salami, sausage, mushroom, tomato, green pepper',
  'Special dough, sauce, cheese, roast beef slices, parmesan cheese, rocket',
  'Special breaded chicken tenderloin with garnish',
  'Mexican vegetables, Mexican chicken fillet strips, cheddar cheese, with garnish',
  'Mushroom, Parmesan Cheese',
  'Mediterranean greens, marinated chicken strips, curry sauce, black olives, corn',
  'Mediterranean greens, feta cheese, black olives, corn',
]

restaurant_food_item_dessert_info = [
  'Chocolate cake',
  'Biscuits, chocolate'
]
#Create main foods
restaurant1_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..60),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

#Create desserts
restaurant1_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
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
