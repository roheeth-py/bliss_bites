import 'package:flutter/material.dart';
import 'package:bliss_bites/model/category_model.dart';
import 'package:bliss_bites/model/meal_model.dart';

const availableCategories = [
  Category(
    id: 'c1',
    title: 'Italian',
    color: Color(0xFFC1E0FF), // Light Blue
    imageUrl:
        'https://i.pinimg.com/564x/d9/8b/75/d98b759fea5cb754165ca7d26435cebc.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c2',
    title: 'Quick & Easy',
    color: Color(0xFFEEDAFE), // Light Pink
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/017/026/337/non_2x/healthy-food-and-traditional-restaurants-cooking-menu-illustration-free-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c3',
    title: 'Hamburgers',
    color: Color(0xFFFFD700), // Gold
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/045/492/378/non_2x/burger-with-cheese-illustration-for-mouthwatering-designs-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c4',
    title: 'German',
    color: Color(0xFFDA70D6), // Orchid
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/016/744/460/non_2x/healthy-food-and-traditional-restaurants-cooking-menu-illustration-free-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c5',
    title: 'Light & Lovely',
    color: Color(0xFF98FB98), // PaleGreen
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/016/744/441/non_2x/healthy-food-and-traditional-restaurants-cooking-menu-illustration-free-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c6',
    title: 'Exotic',
    color: Color(0xFFFFA07A), // LightSalmon
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/016/744/475/non_2x/healthy-food-and-traditional-restaurants-cooking-menu-illustration-free-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c7',
    title: 'Breakfast',
    color: Color(0xFFFFE4B5), // Moccasin
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/003/473/365/non_2x/bread-sandwich-cartoon-illustration-free-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c8',
    title: 'Asian',
    color: Color(0xFFAFEEEE), // PaleTurquoise
    imageUrl:
        'https://img.freepik.com/free-vector/hand-drawn-food-cartoon-illustration_23-2150695326.jpg?w=740&t=st=1720955995~exp=1720956595~hmac=962e8a80b6d25fd0389e04b74a7a476050a981e8a05e9e21df4e632196ebfaaa', // Replace with actual URL
  ),
  Category(
    id: 'c9',
    title: 'French',
    color: Color(0xFFFFB6C1), // LightPink
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/047/538/474/non_2x/french-fries-illustration-vector.jpg', // Replace with actual URL
  ),
  Category(
    id: 'c10',
    title: 'Summer',
    color: Color(0xFFFFDAB9), // PeachPuff
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/006/993/479/non_2x/hand-drawn-fresh-bubble-tea-beverage-flavors-brown-sugar-bubble-milk-tea-free-vector.jpg', // Replace with actual URL
  ),
];

const dummyMeals = [
  Meal(
    id: 'm1',
    categories: [
      'c1',
      'c2',
    ],
    title: 'Spaghetti with Tomato Sauce',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://media.istockphoto.com/id/632439546/photo/pasta-plate.jpg?s=612x612&w=0&k=20&c=zZPaNg_mf7cTVIeJPFVRtsjYClNYkGMcUc5ZBrARwZU=',
    duration: 20,
    ingredients: [
      'Tomatoes: 4',
      'Olive Oil: 1 Tablespoon',
      'Onion: 1',
      'Spaghetti: 250g',
      'Spices',
      'Cheese (optional)'
    ],
    steps: [
      'Tip 1: Cut the tomatoes and the onion into small pieces.',
      'Tip 2: Boil some water - add salt to it once it boils.',
      'Tip 3: Put the spaghetti into the boiling water - they should be done in about 10 to 12 minutes.',
      'Tip 4: In the meantime, heat up some olive oil and add the cut onion.',
      'Tip 5: After 2 minutes, add the tomato pieces, salt, pepper, and your other spices.',
      'Tip 6: The sauce will be done once the spaghetti are.',
      'Tip 7: Feel free to add some cheese on top of the finished dish.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm2',
    categories: [
      'c2',
    ],
    title: 'Toast Hawaii',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/07/11/21/51/toast-3532016_1280.jpg',
    duration: 10,
    ingredients: [
      'White Bread: 1 Slice',
      'Ham: 1 Slice',
      'Pineapple: 1 Slice',
      'Cheese: 1-2 Slices',
      'Butter'
    ],
    steps: [
      'Tip 1: Butter one side of the white bread.',
      'Tip 2: Layer ham, pineapple, and cheese on the white bread.',
      'Tip 3: Bake the toast for about 10 minutes in the oven at 200°C.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm3',
    categories: [
      'c2',
      'c3',
    ],
    title: 'Classic Hamburger',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2014/10/23/18/05/burger-500054_1280.jpg',
    duration: 45,
    ingredients: [
      'Cattle Hack: 300g',
      'Tomato: 1',
      'Cucumber: 1',
      'Onion: 1',
      'Ketchup',
      'Burger Buns: 2'
    ],
    steps: [
      'Tip 1: Form 2 patties.',
      'Tip 2: Fry the patties for about 4 minutes on each side.',
      'Tip 3: Quickly fry the buns for about 1 minute on each side.',
      'Tip 4: Brush buns with ketchup.',
      'Tip 5: Serve burger with tomato, cucumber, and onion.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm4',
    categories: [
      'c4',
    ],
    title: 'Wiener Schnitzel',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://cdn.pixabay.com/photo/2018/03/31/19/29/schnitzel-3279045_1280.jpg',
    duration: 60,
    ingredients: [
      'Veal Cutlets: 8',
      'Eggs: 4',
      'Bread Crumbs: 200g',
      'Flour: 100g',
      'Butter: 300ml',
      'Vegetable Oil: 100g',
      'Salt',
      'Lemon Slices'
    ],
    steps: [
      'Tip 1: Tenderize the veal to about 2–4mm, and salt on both sides.',
      'Tip 2: On a flat plate, stir the eggs briefly with a fork.',
      'Tip 3: Lightly coat the cutlets in flour then dip into the egg, and finally, coat in breadcrumbs.',
      'Tip 4: Heat the butter and oil in a large pan (allow the fat to get very hot) and fry the schnitzels until golden brown on both sides.',
      'Tip 5: Make sure to toss the pan regularly so that the schnitzels are surrounded by oil and the crumbing becomes ‘fluffy’.',
      'Tip 6: Remove and drain on kitchen paper. Fry the parsley in the remaining oil and drain.',
      'Tip 7: Place the schnitzels on a warmed plate and serve garnished with parsley and slices of lemon.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm5',
    categories: [
      'c2',
      'c5',
      'c10',
    ],
    title: 'Salad with Smoked Salmon',
    affordability: Affordability.luxurious,
    complexity: Complexity.simple,
    imageUrl:
        'https://cdn.pixabay.com/photo/2016/10/25/13/29/smoked-salmon-salad-1768890_1280.jpg',
    duration: 15,
    ingredients: [
      'Arugula',
      'Lamb\'s Lettuce',
      'Parsley',
      'Fennel',
      'Smoked Salmon: 200g',
      'Mustard',
      'Balsamic Vinegar',
      'Olive Oil',
      'Salt and Pepper'
    ],
    steps: [
      'Tip 1: Wash and cut salad and herbs.',
      'Tip 2: Dice the salmon.',
      'Tip 3: Process mustard, vinegar, and olive oil into a dressing.',
      'Tip 4: Prepare the salad.',
      'Tip 5: Add salmon cubes and dressing.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm6',
    categories: [
      'c6',
      'c10',
    ],
    title: 'Delicious Orange Mousse',
    affordability: Affordability.affordable,
    complexity: Complexity.hard,
    imageUrl:
        'https://cdn.pixabay.com/photo/2017/05/01/05/18/pastry-2274750_1280.jpg',
    duration: 240,
    ingredients: [
      'Sheets of Gelatine: 4',
      'Orange Juice: 150ml',
      'Sugar: 80g',
      'Yoghurt: 300g',
      'Cream: 200g',
      'Orange Peel'
    ],
    steps: [
      'Tip 1: Dissolve gelatine in pot.',
      'Tip 2: Add orange juice and sugar.',
      'Tip 3: Take pot off the stove.',
      'Tip 4: Add 2 tablespoons of yoghurt.',
      'Tip 5: Stir gelatin under remaining yoghurt.',
      'Tip 6: Cool everything down in the refrigerator.',
      'Tip 7: Whip the cream and lift it under the orange mass.',
      'Tip 8: Cool down again for at least 4 hours.',
      'Tip 9: Serve with orange peel.',
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm7',
    categories: [
      'c7',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/030/674/231/large_2x/product-shots-of-pancakes-high-quality-4k-ultra-free-photo.jpg',
    duration: 20,
    ingredients: [
      'All-purpose Flour: 1 1/2 Cups',
      'Baking Powder: 3 1/2 Teaspoons',
      'Salt: 1 Teaspoon',
      'White Sugar: 1 Tablespoon',
      'Milk: 1 1/4 cups',
      'Egg: 1',
      'Butter: 3 Tablespoons, melted',
      'Cooking Spray or Butter, to grease the pan'
    ],
    steps: [
      'Tip 1: In a bowl, sift together the flour, baking powder, salt, and sugar.',
      'Tip 2: Make a well in the center and pour in the milk, egg, and melted butter; mix until smooth.',
      'Tip 3: Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Tip 4: Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each pancake.',
      'Tip 5: Brown on both sides and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm8',
    categories: [
      'c1',
      'c4',
    ],
    title: 'Risotto',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://w0.peakpx.com/wallpaper/592/97/HD-wallpaper-risotto-dish-delicious-rise-food-cook-vegetables.jpg',
    duration: 40,
    ingredients: [
      'Arborio Rice: 200g',
      'Chicken Broth: 1L',
      'Parmesan Cheese: 50g',
      'Butter: 2 Tablespoons',
      'Onion: 1',
      'White Wine: 100ml',
      'Salt',
      'Pepper'
    ],
    steps: [
      'Tip 1: Heat the chicken broth in a pot.',
      'Tip 2: In another pot, melt the butter and add the chopped onion.',
      'Tip 3: Add the Arborio rice and stir for a few minutes.',
      'Tip 4: Pour in the white wine and cook until it evaporates.',
      'Tip 5: Add the hot broth one ladle at a time, stirring constantly until absorbed.',
      'Tip 6: Repeat until the rice is cooked.',
      'Tip 7: Stir in the Parmesan cheese, season with salt and pepper, and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm9',
    categories: [
      'c5',
      'c6',
    ],
    title: 'Grilled Veggie Skewers',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlBJP_l34gFfdDQTTKdI0c6HTdrlbG0S1yLg&s',
    duration: 25,
    ingredients: [
      'Bell Peppers: 2',
      'Zucchini: 2',
      'Cherry Tomatoes: 15',
      'Red Onion: 1',
      'Olive Oil: 2 Tablespoons',
      'Salt',
      'Pepper',
      'Herbs'
    ],
    steps: [
      'Tip 1: Cut the vegetables into bite-sized pieces.',
      'Tip 2: Thread the vegetables onto skewers.',
      'Tip 3: Brush with olive oil and season with salt, pepper, and herbs.',
      'Tip 4: Grill the skewers over medium heat for about 10 minutes, turning occasionally.',
      'Tip 5: Serve hot.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm10',
    categories: [
      'c7',
      'c8',
    ],
    title: 'Omelette',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://media.healthyfood.com/wp-content/uploads/2018/02/Basic-omelette.jpg',
    duration: 15,
    ingredients: [
      'Eggs: 3',
      'Milk: 1/4 Cup',
      'Salt',
      'Pepper',
      'Butter: 1 Tablespoon',
      'Chopped Vegetables (optional)',
      'Cheese (optional)'
    ],
    steps: [
      'Tip 1: Beat the eggs with milk, salt, and pepper.',
      'Tip 2: Melt butter in a pan over medium heat.',
      'Tip 3: Pour in the egg mixture and cook until the edges start to set.',
      'Tip 4: Add chopped vegetables and cheese if desired.',
      'Tip 5: Fold the omelette in half and cook for another minute.',
      'Tip 6: Serve hot.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm11',
    categories: [
      'c9',
    ],
    title: 'Quiche Lorraine',
    affordability: Affordability.pricey,
    complexity: Complexity.challenging,
    imageUrl:
        'https://media.foodspring.com/magazine/public/uploads/2020/11/protein_quiche_rezept-1195x460.jpg',
    duration: 60,
    ingredients: [
      'Pie Crust: 1',
      'Bacon: 200g',
      'Eggs: 3',
      'Heavy Cream: 200ml',
      'Milk: 200ml',
      'Salt',
      'Pepper',
      'Nutmeg',
      'Gruyere Cheese: 100g'
    ],
    steps: [
      'Tip 1: Preheat oven to 180°C (350°F).',
      'Tip 2: Cook the bacon until crispy, then chop into pieces.',
      'Tip 3: In a bowl, mix eggs, cream, milk, salt, pepper, and nutmeg.',
      'Tip 4: Place the pie crust in a baking dish and add the bacon and grated Gruyere cheese.',
      'Tip 5: Pour the egg mixture over the bacon and cheese.',
      'Tip 6: Bake for 40-45 minutes, until golden brown.',
      'Tip 7: Let it cool slightly before serving.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm12',
    categories: [
      'c10',
    ],
    title: 'Fruit Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/026/626/541/large_2x/fruits-food-fruit-salad-background-free-photo.jpg',
    duration: 10,
    ingredients: [
      'Strawberries: 1 Cup',
      'Blueberries: 1 Cup',
      'Kiwi: 2',
      'Mango: 1',
      'Orange Juice: 1/2 Cup',
      'Honey: 1 Tablespoon'
    ],
    steps: [
      'Tip 1: Wash and cut all the fruits into bite-sized pieces.',
      'Tip 2: In a bowl, mix the orange juice and honey.',
      'Tip 3: Pour the mixture over the fruit and toss gently.',
      'Tip 4: Serve chilled.'
    ],
    isGlutenFree: true,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm13',
    categories: [
      'c3',
      'c7',
    ],
    title: 'Breakfast Burrito',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.mexicanplease.com/wp-content/uploads/2022/06/Vegetarian-Breakfast-Burritos-11.jpg',
    duration: 15,
    ingredients: [
      'Tortillas: 2',
      'Scrambled Eggs: 2',
      'Cheddar Cheese: 50g',
      'Salsa: 1/4 Cup',
      'Avocado: 1',
      'Salt',
      'Pepper'
    ],
    steps: [
      'Tip 1: Warm the tortillas in a pan.',
      'Tip 2: Cook the scrambled eggs with salt and pepper.',
      'Tip 3: Place eggs, cheese, salsa, and avocado slices on each tortilla.',
      'Tip 4: Roll up the tortillas and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm14',
    categories: [
      'c8',
      'c10',
    ],
    title: 'Sushi Rolls',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.beyondthebayoublog.com/wp-content/uploads/2024/02/Overview-How-To-Make-Eel-Sushi-Unagi-Sushi-1.png',
    duration: 60,
    ingredients: [
      'Sushi Rice: 200g',
      'Nori Sheets: 5',
      'Fresh Fish: 200g',
      'Cucumber: 1',
      'Avocado: 1',
      'Soy Sauce',
      'Wasabi',
      'Pickled Ginger'
    ],
    steps: [
      'Tip 1: Cook the sushi rice according to package instructions.',
      'Tip 2: Place a nori sheet on a bamboo mat and spread a thin layer of rice over it.',
      'Tip 3: Add slices of fresh fish, cucumber, and avocado.',
      'Tip 4: Roll up the nori tightly using the bamboo mat.',
      'Tip 5: Slice the roll into pieces and serve with soy sauce, wasabi, and pickled ginger.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm15',
    categories: [
      'c6',
      'c9',
    ],
    title: 'Crepes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.inthekitchenwithmatt.com/wp-content/uploads/2019/04/how-to-make-crepes-easy-crepe-recipe-480x270.jpg',
    duration: 30,
    ingredients: [
      'Flour: 1 Cup',
      'Milk: 1 1/2 Cups',
      'Eggs: 2',
      'Butter: 2 Tablespoons, melted',
      'Salt',
      'Sugar',
      'Nutella or Fresh Fruit for Filling'
    ],
    steps: [
      'Tip 1: In a bowl, whisk together flour, milk, eggs, melted butter, salt, and sugar.',
      'Tip 2: Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Tip 3: Pour or scoop the batter onto the griddle, using approximately 1/4 cup for each crepe.',
      'Tip 4: Tilt the pan with a circular motion so that the batter coats the surface evenly.',
      'Tip 5: Cook the crepe for about 2 minutes, until the bottom is light brown. Loosen with a spatula, turn and cook the other side.',
      'Tip 6: Fill with Nutella or fresh fruit and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm16',
    categories: [
      'c2',
      'c5',
    ],
    title: 'Stuffed Peppers',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://realfood.tesco.com/media/images/RFO-1400x919-Italian-style-stuffed-peppers-8df5ebdb-5e6a-45d6-b633-753d79a83d00-0-1400x919.jpg',
    duration: 45,
    ingredients: [
      'Bell Peppers: 4',
      'Ground Beef: 500g',
      'Rice: 1 Cup',
      'Tomato Sauce: 1 Cup',
      'Onion: 1',
      'Garlic: 2 Cloves',
      'Salt',
      'Pepper',
      'Cheese (optional)'
    ],
    steps: [
      'Tip 1: Preheat the oven to 180°C (350°F).',
      'Tip 2: Cook the rice according to package instructions.',
      'Tip 3: In a pan, cook the ground beef with chopped onion and garlic.',
      'Tip 4: Mix the cooked rice, beef, and tomato sauce. Season with salt and pepper.',
      'Tip 5: Cut the tops off the bell peppers and remove the seeds.',
      'Tip 6: Stuff the peppers with the beef mixture and place them in a baking dish.',
      'Tip 7: Bake for 30 minutes. Optionally, add cheese on top and bake for another 5 minutes.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm17',
    categories: [
      'c1',
      'c3',
    ],
    title: 'Pancakes',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://static.vecteezy.com/system/resources/previews/030/674/231/large_2x/product-shots-of-pancakes-high-quality-4k-ultra-free-photo.jpg',
    duration: 20,
    ingredients: [
      'Flour: 1 Cup',
      'Milk: 1 Cup',
      'Egg: 1',
      'Butter: 2 Tablespoons, melted',
      'Baking Powder: 1 Tablespoon',
      'Sugar: 2 Tablespoons',
      'Salt: 1/4 Teaspoon',
      'Maple Syrup (for serving)'
    ],
    steps: [
      'Tip 1: In a bowl, mix the flour, sugar, baking powder, and salt.',
      'Tip 2: In another bowl, whisk the milk, egg, and melted butter.',
      'Tip 3: Combine the wet and dry ingredients and stir until smooth.',
      'Tip 4: Heat a lightly oiled griddle or frying pan over medium-high heat.',
      'Tip 5: Pour the batter onto the griddle, using approximately 1/4 cup for each pancake.',
      'Tip 6: Brown on both sides and serve hot with maple syrup.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm18',
    categories: [
      'c6',
      'c8',
    ],
    title: 'Mushroom Soup',
    affordability: Affordability.pricey,
    complexity: Complexity.simple,
    imageUrl:
        'https://grownupdish.com/wp-content/uploads/2023/03/Hungarian-Mushroom-Soup-scaled.jpeg',
    duration: 35,
    ingredients: [
      'Mushrooms: 500g',
      'Onion: 1',
      'Garlic: 2 Cloves',
      'Butter: 2 Tablespoons',
      'Flour: 2 Tablespoons',
      'Chicken Broth: 4 Cups',
      'Heavy Cream: 1 Cup',
      'Salt',
      'Pepper',
      'Parsley (for garnish)'
    ],
    steps: [
      'Tip 1: In a pot, melt the butter and cook the chopped onion and garlic until soft.',
      'Tip 2: Add the sliced mushrooms and cook until they release their juices.',
      'Tip 3: Stir in the flour and cook for another minute.',
      'Tip 4: Gradually add the chicken broth, stirring constantly.',
      'Tip 5: Bring to a boil, then reduce heat and simmer for 20 minutes.',
      'Tip 6: Add the heavy cream and season with salt and pepper.',
      'Tip 7: Garnish with chopped parsley and serve hot.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm19',
    categories: [
      'c9',
      'c10',
    ],
    title: 'Greek Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://i2.wp.com/www.downshiftology.com/wp-content/uploads/2018/08/Greek-Salad-main.jpg',
    duration: 15,
    ingredients: [
      'Cucumber: 1',
      'Tomatoes: 3',
      'Red Onion: 1',
      'Feta Cheese: 100g',
      'Olives: 1/2 Cup',
      'Olive Oil: 3 Tablespoons',
      'Lemon Juice: 1 Tablespoon',
      'Salt',
      'Pepper',
      'Oregano'
    ],
    steps: [
      'Tip 1: Chop the cucumber, tomatoes, and red onion.',
      'Tip 2: In a bowl, mix the chopped vegetables with olives and crumbled feta cheese.',
      'Tip 3: In a small bowl, whisk together olive oil, lemon juice, salt, pepper, and oregano.',
      'Tip 4: Pour the dressing over the salad and toss gently.',
      'Tip 5: Serve chilled.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: true,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm20',
    categories: [
      'c4',
      'c7',
    ],
    title: 'Tuna Salad',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://www.simplyrecipes.com/thmb/RTMexrkXB54ynL7R8zap_zCFZB8=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__simply_recipes__uploads__2020__04__Tuna-Salad-for-Two-LEAD-8-8c36ee87a2d24621bca53ff1f85e5627.jpg',
    duration: 10,
    ingredients: [
      'Canned Tuna: 1 Can',
      'Mayonnaise: 2 Tablespoons',
      'Celery: 1 Stalk',
      'Red Onion: 1/4',
      'Lemon Juice: 1 Tablespoon',
      'Salt',
      'Pepper',
      'Lettuce (for serving)'
    ],
    steps: [
      'Tip 1: Drain the canned tuna.',
      'Tip 2: In a bowl, mix the tuna with mayonnaise, chopped celery, and red onion.',
      'Tip 3: Add lemon juice, salt, and pepper to taste.',
      'Tip 4: Serve on a bed of lettuce or as a sandwich filling.'
    ],
    isGlutenFree: true,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: true,
  ),
  Meal(
    id: 'm21',
    categories: [
      'c1',
      'c5',
    ],
    title: 'Beef Stroganoff',
    affordability: Affordability.luxurious,
    complexity: Complexity.challenging,
    imageUrl:
        'https://www.seriouseats.com/thmb/Z16YKiURjKl0N6J_Mgy03eJHYX0=/1500x0/filters:no_upscale():max_bytes(150000):strip_icc()/__opt__aboutcom__coeus__resources__content_migration__serious_eats__seriouseats.com__recipes__images__2014__12__20150110-beef-stroganoff-food-lab-28-c02205e4bcc64a1bb5c92c6e3262dc76.jpg',
    duration: 50,
    ingredients: [
      'Beef: 500g',
      'Mushrooms: 200g',
      'Onion: 1',
      'Garlic: 2 Cloves',
      'Butter: 2 Tablespoons',
      'Flour: 2 Tablespoons',
      'Beef Broth: 2 Cups',
      'Sour Cream: 1 Cup',
      'Salt',
      'Pepper',
      'Paprika',
      'Parsley (for garnish)',
      'Noodles (for serving)'
    ],
    steps: [
      'Tip 1: Slice the beef into thin strips.',
      'Tip 2: In a pan, melt the butter and cook the chopped onion and garlic until soft.',
      'Tip 3: Add the sliced mushrooms and cook until they release their juices.',
      'Tip 4: Stir in the flour and cook for another minute.',
      'Tip 5: Gradually add the beef broth, stirring constantly.',
      'Tip 6: Add the beef and cook until tender.',
      'Tip 7: Stir in the sour cream and season with salt, pepper, and paprika.',
      'Tip 8: Serve over noodles and garnish with chopped parsley.'
    ],
    isGlutenFree: false,
    isVegan: false,
    isVegetarian: false,
    isLactoseFree: false,
  ),
  Meal(
    id: 'm22',
    categories: [
      'c2',
      'c6',
    ],
    title: 'Vegetable Stir Fry',
    affordability: Affordability.affordable,
    complexity: Complexity.simple,
    imageUrl:
        'https://playswellwithbutter.com/wp-content/uploads/2022/02/Beef-and-Vegetable-Stir-Fry-16.jpg',
    duration: 25,
    ingredients: [
      'Broccoli: 1 Cup',
      'Carrot: 1',
      'Bell Peppers: 2',
      'Snow Peas: 1 Cup',
      'Garlic: 2 Cloves',
      'Soy Sauce: 3 Tablespoons',
      'Olive Oil: 2 Tablespoons',
      'Salt',
      'Pepper',
      'Rice (for serving)'
    ],
    steps: [
      'Tip 1: Chop all vegetables into bite-sized pieces.',
      'Tip 2: In a pan, heat the olive oil and cook the chopped garlic until fragrant.',
      'Tip 3: Add the vegetables and stir-fry for 5-7 minutes.',
      'Tip 4: Add soy sauce, salt, and pepper to taste.',
      'Tip 5: Serve hot over rice.'
    ],
    isGlutenFree: false,
    isVegan: true,
    isVegetarian: true,
    isLactoseFree: true,
  ),
];
