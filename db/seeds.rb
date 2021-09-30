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
                                 photo_url: "https://heytripster.com/wp-content/uploads/2020/05/the-best-restaurants-in-istanbul-min.jpg",
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

restaurant1_starters_photos = [
  'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F9%2F2017%2F06%2Ffix-vegetarian-meatballs-fwx.jpg&q=85',
  'https://www.panningtheglobe.com/wp-content/uploads/2013/10/Curried-Chicken-Salad-web.jpg',
  'https://keto-mojo.com/wp-content/uploads/2021/04/3-1-Greek-Salad.jpg'
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

restaurant1_main_food_items_photos = [

  'https://www.weschenfelder.co.uk/media/catalog/product/cache/99cc3f05f3332bcae6956cb4c448db7e/a/m/american_burger_.png',
  'https://images.ctfassets.net/uexfe9h31g3m/6QtnhruEFi8qgEyYAICkyS/f973f88dd3505b70b417e0af33460ab5/SPAGHETTI-BOLOGNESE-2.jpg?w=2000&h=1500&fm=jpg&fit=thumb&q=90&fl=progressive',
  'https://pinchofyum.com/wp-content/uploads/mushroom-spaghetti-recipe-1.jpg',
  'https://static01.nyt.com/images/2019/02/12/dining/sl-eggplant-rigatoni/sl-eggplant-rigatoni-articleLarge.jpg',
  'https://imagesvc.meredithcorp.io/v3/jumpstartpure/image?url=https://static.onecms.io/wp-content/uploads/sites/19/2019/12/30/429048911_6119304633001_6119304395001-vs.jpg&w=1280&h=720&q=90&c=cc',
  'https://steelehousekitchen.com/wp-content/uploads/2014/12/pot-roast-pizza.jpg',
  'https://fromthelarder.co.uk/wp-content/uploads/2019/01/SMALLSQChicken-Escalope-3.jpg',
  'https://s3-eu-west-1.amazonaws.com/images-marleyspoon-production/media/recipes/46806/main_photos/large/low_carb_spicy_mexican_chicken_coleslaw-d5d4e18142be340f3df09ed6ee11b91a.jpeg'
]

restaurant1_desserts = [
  'Mr. Joe',
  'Pyramid Mosaic Cake'
]

restaurant1_desserts_photos = [

  'https://3.bp.blogspot.com/-qLa0LevVD1k/W2spWH383mI/AAAAAAAAnPM/ILYPW92vh34gfOQQlBIn2usSLv5EtRWTQCLcBGAs/s1600/Crock%2BPot%2BHot%2BFudge%2BCake%2B%25281%2Bof%2B1%2529-2.jpg',
  'https://myfoodbook.com.au/sites/default/files/styles/rc_mo/public/recipe_photo/Chocolate-biscuit-cake_1799.jpg'

]

restaurant1_drinks = [
  'Watermelon Chiller',
  'Pineapple Infused Martini'
]

restaurant1_drinks_photos = [

  'https://static.onecms.io/wp-content/uploads/sites/43/2020/07/15/5500158-watermelon-and-strawberry-lemonade-photo-by-kim-cropped.jpg',
  'https://prods3.imgix.net/images/articles/2015_05/Web-Article-2-Craft-Cocktail-Party-Book-Julie-Reiner-Cocktail-Recipes.jpg?auto=format%2Ccompress&dpr=2.63&ixjsv=2.2.3&q=38&w=370'
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
                   photo_url: restaurant1_starters_photos[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create main foods

restaurant1_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..60),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   photo_url: restaurant1_main_food_items_photos[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create desserts

restaurant1_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   photo_url: restaurant1_desserts_photos[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Create drinks

restaurant1_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(25..40),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   photo_url: restaurant1_drinks_photos[index],
                   restaurant: restaurant1) # connects it to a specific Restaurant!
end

# Food items for restaurant 2

restaurant2_starters = [
  'Octopus Carpaccio',
  'Garden Greens Salad',
  'Sunset Caesar Salad'
]

restaurant2_starters_photos = [

'https://thewrightbrothers.co.uk/wp-content/uploads/2018/04/Octopus-Carpaccio-Feature.jpg',
'https://aprettylifeinthesuburbs.com/wp-content/uploads/2011/05/Simple-Green-Salad.jpg',
'https://b.zmtcdn.com/data/pictures/8/19548248/d50cb9e0388502a5cd560049525f84ca_featured_v2.jpg'

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

restaurant2_main_food_items_photos = [

'https://assets.epicurious.com/photos/596d187f09c9df719089f1df/1:1/w_775%2Cc_limit/Weekend-Warrior-How-To-Make-Homemade-Pasta-071310172455.jpg',
'https://res.cloudinary.com/hksqkdlah/image/upload/ar_1:1,c_fill,dpr_2.0,f_auto,fl_lossy.progressive.strip_profile,g_faces:auto,q_auto:low,w_344/29743_sfs-grilled-pork-tenderloin-with-tomato-onion-salad-011',
'https://omnivorescookbook.com/wp-content/uploads/2017/05/1705_Chinese-Crispy-Duck-Breast_003.jpg',
'https://s3.amazonaws.com/finecooking.s3.tauntonclud.com/app/uploads/2019/07/09151502/tbone_steak_wide.jpg',
'https://prairiemeats.ca/wp-content/uploads/2019/11/023097-Ribeye-Steak-beef-stock.jpg',
'https://www.thespruceeats.com/thmb/zSEcXDboy9z_dmpBDWF5e1LAScI=/3204x2403/smart/filters:no_upscale()/garlic-herb-rubbed-lamb-chops-recipe-101486-hero-01-5c28010ec9e77c0001ac806f.jpg',
'https://infra-recipesepi-prod-cdn.azureedge.net/497f8b/contentassets/91f209429cea41478810b2cdbd6fde2d/full_spicy-grilled-norwegian-salmon.jpg?width=1112&height=554&transform=DownFill&hash=452b79474648dafd7379a9b8df8551c1',
'https://www.teaforturmeric.com/wp-content/uploads/2017/06/Spinach-and-Potato-Curry-728x1092.jpg'
]
restaurant2_desserts = [
  'Sunset Cheesecake',
  'Ice Cream',
  'Sorbet'
]

restaurant2_desserts_photos = [
'https://www.seriouseats.com/thmb/UGwN-duUT6336M5RFL8scx4MHpE=/1500x1125/filters:fill(auto,1)/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__2019__05__20190520-cheesecake-vicky-wasik-34-16488b3671ae47b5b29eb7124dbaf938.jpg',
'https://www.layersofhappiness.com/wp-content/uploads/2015/07/creamiest-ice-cream-4.jpg',
'https://www.cuisinart.com/globalassets/recipes/recipe_114_269876315.jpg'

]

restaurant2_drinks = [
  'Sweet Summertini',
  'MojitaRita',
  'Tidal Wave'
]

restaurant2_drinks_photos = [
'https://www.acouplecooks.com/wp-content/uploads/2021/05/Strawberry-Mojito-008.jpg',
'https://imagesvc.meredithcorp.io/v3/mm/image?url=https%3A%2F%2Fstatic.onecms.io%2Fwp-content%2Fuploads%2Fsites%2F24%2F2012%2F09%2FDSC_7278_0-2000.jpg&q=85',
'https://previews.123rf.com/images/dml5050/dml50501306/dml5050130600002/20328957-tropical-martini-cosmopolitan-cocktail-or-blue-hawaiian-alcohol-drink-isolated-on-a-white-background.jpg'

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
                   photo_url: restaurant2_starters_photos[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create main foods

restaurant2_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(50..70),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   photo_url: restaurant2_main_food_items_photos[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create desserts
restaurant2_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(40..50),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   photo_url: restaurant2_desserts_photos[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Create drinks

restaurant2_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(30..55),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   photo_url: restaurant2_drinks_photos[index],
                   restaurant: restaurant2) # connects it to a specific Restaurant!
end

# Food items for restaurant 3

restaurant3_starters = [
  'Grilled Octopus',
  'Grilled Chicken Salad',
  'Spicy Calamari and Spinach Salad'
]

restaurant3_starters_photos = [

'https://themaplecuttingboard.com/wp-content/uploads/2021/05/Pacific-Grilled-Octopus-1.jpg',
'https://cravingtasty.com/wp-content/uploads/2019/02/Grilled-Chicken-Salad-Horizontal.jpg',
'https://www.haveazeed.com/wp-content/uploads/2019/08/4.%E0%B8%A5%E0%B8%B2%E0%B8%9A%E0%B8%9B%E0%B8%A5%E0%B8%B2%E0%B8%AB%E0%B8%A1%E0%B8%B6%E0%B8%81.jpg'

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

restaurant3_main_food_items_photos = [

'https://asianfoodnetwork.com/content/dam/afn/global/en/recipes/sate-cumi-bakso-skewered-calamari-and-beef-balls/SATE_CUMI_BAKSO_article_1920x1280_5.jpg.transform/desktop-img/img.jpg',
'https://www.gordonramsayrestaurants.com/assets/Uploads/_resampled/CroppedFocusedImage108081050-50-TN-American-Style-Dirty-Burger.jpg',
'https://www.grillseeker.com/wp-content/uploads/2019/05/Veal-Piccata-Feature-Image.jpg',
'https://assets.epicurious.com/photos/578d1fcb95824bf90525e556/16:9/w_1280,c_limit/ricotta-filled-ravioli-ravioli-di-ricotta.jpg',
'https://www.unileverfoodsolutions.com.tr/dam/global-ufs/mcos/TURKEY/calcmenu/recipes/TR-recipes/general/bezelyeli-ve-mantarl%C4%B1-risotto/main-header.jpg',
'https://www.deliciousmagazine.co.uk/wp-content/uploads/2018/11/fettucine-alfredo.jpg',
'https://menu.mcmahonsbarmaynooth.com/wp-content/uploads/2020/04/Chicken-wings-01-scaled.jpg',
'https://www.vermicular.us/images/recipes/Recipe-Photos/_1200x630_crop_center-center_82_none/45.-Deep-Fried-Beef-Cutlet.jpg?mtime=1617253413'

]
restaurant3_desserts = [
  'Parle Special Date Pudding',
  'Ananas Carpaccio',
  'Creme Brulee'
]

restaurant3_desserts_photos = [

'https://www.recipetineats.com/wp-content/uploads/2018/07/Sticky-Date-Pudding_5.jpg?w=900',
'https://img.jamieoliver.com/jamieoliver/recipe-database/64975504.jpg?tr=w-800,h-1066',
'https://www.seriouseats.com/thmb/YTp5R-9CR4LwX1kiwXsLCdHODWA=/735x0/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2014__07__20140730-btb-cremebrulee-afb1fae7b3df4c7b9efe56be7e994618.jpg'
]

restaurant3_drinks = [
  'Miss Daisy',
  'Tropical Sunset',
  'Texas Mule'
]

restaurant3_drinks_photos = [

'https://dujour.com/wp-content/uploads/1a8d5474a319.jpg',
'https://www.justalittlebitofbacon.com/wp-content/uploads/2018/03/pineapple-rum-punch-1.jpg',
'https://www.frdistilling.com/wp-content/uploads/20190328-IMG_9429-3-1200x1200.jpg'
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
                   photo_url: restaurant3_starters_photos[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end
# Create main foods

restaurant3_main_food_items.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(4..5), price: rand(50..70),
                   category: "Main Course",
                   description: restaurant_main_food_item_info[index],
                   photo_url: restaurant3_main_food_items_photos[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end

# Create desserts

restaurant3_desserts.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(45..55),
                   category: "Dessert",
                   description: restaurant_food_item_dessert_info[index],
                   photo_url: restaurant3_desserts_photos[index],
                   restaurant: restaurant3) # connects it to a specific Restaurant!
end

# Create drinks

restaurant3_drinks.each_with_index do |name, index|
  FoodItem.create!(name: name, rating: rand(3..5), price: rand(40..50),
                   category: "Drink",
                   description: restaurant_food_item_drink_info[index],
                   photo_url: restaurant3_drinks_photos[index],
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
