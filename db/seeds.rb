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

restaurant1 = Restaurant.create!(name: "Vogue Restaurant",
                                 location: "Besiktas, Istanbul, Turkey",
                                 rating: 4.3,
                                 speciality: "International",
                                 photo_url: "http://cdn2.gcprive.co.uk/wp-content/uploads/2013/07/sunset-bargrill-bar-sunset.jpg",
                                 capacity: 150)
restaurant2 = Restaurant.create!(name: "Sunset Grill and Bar",
                                 location: "Nisantasi, Istanbul, Turkey",
                                 rating: 4.6,
                                 speciality: "Mediterranean",
                                 photo_url: "https://voguecdn.blob.core.windows.net/files/img/article_detail/19-07/31/vogue-istanbul-sunset-grill-bar.jpg",
                                 capacity: 170)
restaurant3 = Restaurant.create!(name: "Parle",
                                 location: "Kadikoy, Istanbul, Turkey",
                                 rating: 4.7,
                                 speciality: "International Gourmet",
                                 photo_url: "https://dishadvisor.com/assets/uploads/2019/04/5c466de1-9773-4697-bba7-1a9fff505078.jpg",
                                 capacity: 50)

[restaurant1, restaurant2, restaurant3].each do |restaurant|
  puts "Created #{restaurant.name}"
end

# create 30 food items 10 for each resto

# Food items for restaurant1

restaurant1_starters = [
  'Vegetarian Meatballs',
  'Chicken Curry Salad',
  'Greek Salad'
]

restaurant1_main_food_items = [
  'American Burger',
  'Spaghetti with Bolognese Sauce',
  'Mushroom Spaghetti',
  'Roasted Eggplant Pasta',
  'Mixed Pizza',
  'Roast Beef Pizza',
  'Chicken Schnitzel',
  'Mexican Chicken'
]

restaurant1_desserts = [
  'Mr. Joe',
  'Pyramid Mosaic Cake'
]

restaurant1_drinks = [
  'Watermelon Chiller',
  'Pineapple Infused Martini'
]

restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]

restaurant_starter_info = [

  'Breaded special homemade vegetable meatballs with garnish',
  'Mediterranean greens, marinated chicken strips, curry sauce, black olives, corn',
  'Mediterranean greens, feta cheese, black olives, corn'

]
restaurant_main_food_item_info = [
  'Grilled meatballs, onion rings, tomatoes, lettuce, pickles in burger bread',
  'Spagetti with tomato sauce with minced meat, parmesan cheese',
  'Spagetti with mushroom and parmesan Cheese',
  'Penne with roasted eggplant, parmesan cheese',
  'Special dough, sauce, pizza cheese, salami, sausage, mushroom, tomato, green pepper',
  'Special dough, sauce, cheese, roast beef slices, parmesan cheese, rocket',
  'Special breaded chicken tenderloin with garnish',
  'Mexican vegetables, Mexican chicken fillet strips, cheddar cheese, with garnish'
]

restaurant_food_item_dessert_info = [
  'Hot chocolate cake',
  'Cake with biscuits and chocolate'
]

restaurant_food_item_drink_info = [
  'Hendricks gin, fresh watermelon and cucumber, & club soda',
  'Secret recipe made with our pineapple infused Vodka'
]

# Create starters

restaurant1_starters.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..50),
                   category: "Starter",
                   description: restaurant_starter_info[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create main foods

restaurant1_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..60),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create desserts

restaurant1_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create drinks

restaurant1_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(25..40),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Food items for restaurant 2

restaurant2_starters = [
  'Octopus Carpaccio',
  'Garden Greens Salad',
  'Sunset Caesar Salad'
]

restaurant2_main_food_items = [
  'Homemade Fresh Fettuccini',
  'Grilled Tenderloin',
  'Peking Style Duck',
  'T-Bone Steak',
  'Beef Ribeye',
  'Lamb Chops',
  'Grilled Norwegian Salmon',
  'Far Eastern Style Spinach'
]
restaurant2_desserts = [
  'Sunset Cheesecake',
  'Ice Cream',
  'Sorbet'
]

restaurant2_drinks = [
  'Sweet Summertini',
  'MojitaRita',
  'Tidal Wave'
]
restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]

restaurant_starter_info = [
  'Octopus with chinese radish, ginger cucumber slices, celery stalk and ponzu soy sauce',
  'Mediterranean greens with parmesan tempura and micro basil',
  'Mediterranean greens with beetroot, avocado, coriander and pomegranate sauce dressing'
]

restaurant_main_food_item_info = [
  'Fettuccini with shrimp and lemongrass bolognese',
  'Chicken grilled tenderloin with yuzu mustard sauce',
  'Duck with julienne cucumber and green onion, warm lavash, lime, coriander and hoisin sauce',
  '500 gr. T-Bone Steak',
  '400 gr. beef ribeye',
  '300 gr. lamb chops',
  'Salmon with wild mushroom risotto, celery stalk, Asian red wine sauce, yuzu foam',
  'Spinach with ginger, sesame oil, lime, teriyaki sauce, sesame and chili pepper'
]
restaurant_food_item_dessert_info = [
  'Cheesecake with orange crumbs and pumpkin crunch',
  'Caramel, Chocolate, Vanilla',
  'Lemon, Mango, Forest fruits'
]

restaurant_food_item_drink_info = [
  'Absolut raspberry, watermelon and sour apple Schnapps, lemon and lime',
  'Refreshing cocktail with Bacardi Dragonberry Rum, Exotico Blanco Tequila, mint, lime',
  'Pineapple infused Vodka, Malibu coconut Rum, and Blue Curacao with pineapple juice'
]

# Create starters

restaurant2_starters.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..50),
                   category: "Starter",
                   description: restaurant_starter_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create main foods

restaurant2_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(50..70),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create desserts
restaurant2_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create drinks

restaurant2_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..55),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Food items for restaurant 3

restaurant3_starters = [
  'Grilled Octopus',
  'Grilled Chicken Salad',
  'Spicy Calamari and Spinach Salad'
]

restaurant3_main_food_items = [
  'Calamari Meatball',
  'Parle Style Burger',
  'Veal Chops',
  'Fresh Ravioli',
  'Parle Risotto',
  'Homemade Fettuchine',
  'Hot Spicy Chicken Wings',
  'Beef Cutlet'
]
restaurant3_desserts = [
  'Parle Special Date Pudding',
  'Ananas Carpaccio',
  'Creme Brulee'
]

restaurant3_drinks = [
  'Miss Daisy',
  'Tropical Sunset',
  'Texas Mule'
]

restaurant_food_item_category = [
  'drinks',
  'desserts',
  'starters',
  'main courses'
]

restaurant_starter_info = [
  'Octopus with sun dried tomatoes, lemon flavored potatoes, lime dressing',
  'Grilled chicken with smoked eggplant and lettuce with balsamic dressing',
  'Spinach Salad and calamari with green lentil stew with lemon dressing'
]

restaurant_main_food_item_info = [
  'Calamari meatball with lentil stew',
  'Burger with muhammara sauce, aioli with french fries',
  'Veal chops with sauteed zucchini, ovenbaked potato with demi glace sauce ',
  'Ravioli with broiled eggplant, tomato with fresh thyme and butter sauce',
  'Risotto with ovenbaked porchini mushroom, basil',
  'Homemade fettuchine with special bolognese sauce',
  'Chicken Wings with sriracha sauce',
  'Beef Cutlet and steamed wheat rice with porchini mushroom'
]

restaurant_food_item_dessert_info = [
  'Parle pudding with vanilla ice cream and caramel sauce',
  'Pineapple carpaccio with tropical sorbet, caramelized walnuts, maple Sauce',
  'Creme brulee with caramelized banana'
]

restaurant_food_item_drink_info = [
  'Deep Eddy sweet tea Vodka, Jim Beam peach Bourbon, lemonade, and fresh squeezed lime',
  'Captain Morgan Spiced Rum, Malibu Coconut Rum, pineapple juice and grenadine',
  'Fresh squeezed limes and Titos Handmade Vodka perfectly mixed with Barritt’s Ginger Beer'
]

# Create starters

restaurant3_starters.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..50),
                   category: "Starter",
                   description: restaurant_starter_info[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end
# Create main foods

restaurant3_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(50..70),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end

# Create desserts

restaurant3_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(45..55),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end

# Create drinks

restaurant3_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(40..50),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end
# create 10 9 orders 3 per resto

# Restaurant.all.each do |restaurant|
  # 3.times do
    # pick one random user
    # user = User.all.sample
    # order = Order.create!(restaurant: restaurant,
                          #user: user
    #)

    # Now create a few order items for the order
    # rand(1..3).times do
      # Create an OrderItem...
    # end
  # end
# end
# each order should have 1-3 order items
puts "Finished!"
