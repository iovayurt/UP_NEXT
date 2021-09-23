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

restaurant2_main_food_items = [
  'Octopus Carpaccio',
  'Homemade fresh Fettuccini',
  'Grilled Tenderloin',
  'Peking style Duck',
  'T-Bone Steak',
  'Antrikot',
  'Lamb chops',
  'Grilled Norwegian Salmon',
  'Far Eastern style spinach',
  'Garden Greens Salad',
  'Sunset Caesar Salad'
]
restaurant2_desserts = [
  'Sunset San Sebastián Cheesecake',
  'Ice Cream Types',
  'Sorbet Types'
]
restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]
restaurant_main_food_item_info = [
  'Octopus with chinese radish, ginger cucumber slices, celery stalk and ponzu soy sauce',
  'Fettuccini with shrimp and lemongrass bolognese',
  'Chicken Grilled Tenderloin with yuzu mustard sauce',
  'Duck with julienne cucumber and green onion, warm lavash, lime, coriander and hoisin sauce',
  '500 gr. T-Bone Steak',
  '400 gr. Antrikot',
  '300 gr. Lamb chops',
  'Salmon with wild mushroom risotto, celery stalk, Asian red wine sauce, yuzu foam and lime powder',
  'Mediterranean greens with beetroot, avocado, pine nuts, coriander,cucumber and pomegranate sauce dressing',
  'spinach with ginger, sesame oil, lime, teriyaki sauce, sesame and chili pepper',
  'Mediterranean greens with parmesan tempura and micro basil',
  'Mediterranean greens, feta cheese, black olives, corn'
]
restaurant_food_item_dessert_info = [
  'San Sebastián Cheesecake with orange crumbs and pumpkin crunch',
  'Caramel, Chocolate, Vanilla',
  'Lemon, Mango, Forest fruits'
]
#Create main foods
restaurant2_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(50..70),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end
#Create desserts
restaurant2_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
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
