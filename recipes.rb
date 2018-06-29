# recipes.rb
# Build a program that allows the user to learn about all your top 5 (or more) favorite movies. For example, if they ask about movie 1, tell them the title of that movie and ask what else they want to know about that movie. Allow the user to navigate the movie database sensibly.
# Extensions:
# Build out a "list" function that allows the user to see the titles of all the movies in the database.
# Build out a movie quiz that references the information in your personal movie database.
# Loop the program such that it keeps running until the user types exit
# Add in a way for the user to add their own movies to the database.


puts "Welcome! My top 5 favorite recipies are listed here. To begin, would you like to search for recipies LESS THAN $5 or GREATER THAN $5 per serving?" 

search = gets.chomp
    
while search != "less than $5"
    
    if search == "greater than $5"
        puts "Sorry, we only have recipes that cost less than $5 in at the moment. Try again."
        search = gets.chomp
            
    else
        puts "Sorry, I did not understand that. Please try your search again. Would you like to search for recipes LESS THAN $5 or GREATER THAN $5 per serving?"
        search = gets.chomp
    end
end
    


puts "Great! For less than $5, we have the following suggested recipes: avocado egg sandwich, chia pudding, two ingredient pizza dough, easy granola, simple salad. Which would you like to see?"

loop do
    selection = gets.chomp.gsub(" ","_").to_sym


    recipes = {
        :avocado_egg_sandwich => {
            :essential_ingredients => "1 whole avocado, 2 hard-boiled egg, sandwich bread",
            :optional_ingredients => "sliced tomatoes, salt/ pepper or your favorite spices to taste",
            :prep_time => "5 minutes" ,
            :total_time => "15 minutes",
            :cost => "under $5 per serving",
            :instructions => "This recipe makes two sandwiches. Take a half avocado and cut into slices. Peel and slice 1 hard-boiled egg. Arrange avocado and egg slices onto your sandwich. Add optional ingredients as desired. Repeat with the remaining half avocado and hard-boiled egg for the second sandwich. Enjoy!"
            },
            
        :chia_pudding => {
            :essential_ingredients => "chia seeds, milk of choice (almond milk, cashew milk, oat milk, coconut milk)",
            :optional_ingredients => "fresh or dried fruit, dried nuts",
            :prep_time => "5 minutes",
            :total_time => "10 minutes or overnight",
            :cost => "under $5 per serving",
            :instructions => "In a resealable jar, combine ingredients until chia seeds are evenly dispersed. Cover and allow to sit for 5 minutes or refrigerate overnight. Once thickened, serve with optional ingredients if desiered."
            },
            
        :two_ingredient_pizza_dough => {
            :essential_ingredients => "1 cup full-fat greek yogurt, 2 cups self-rising flour",
            :optional_ingredients => "pizza sauce, cheese, your favoirte pizza toppings",
            :prep_time => "5 minutes",
            :total_time => "35 minutes",
            :cost => "under $5 per serving",
            :instructions => "This recipe makes two 10 inch pizzas. Combine ingredients in a large bowl and mix until a dough forms. Roll out onto a baking sheet or pizza stone. Top with your favorite tomato sauce and pizza toppings. Bake in preheated oven at 450 degrees F for 8 to 10 minutes. Allow to cool for 5 minutes before serving."
            },
            
        :easy_granola => {
            :essential_ingredients => "4 cups whole rolled oats, 1 cup dried fruit (ex. cranberries, raisins), 1 cup nuts (ex. sliced almonds, walnuts, cashews), 1/2 cup maple syrup, 2 tablespoons canola oil, 1/2 teaspoon kosher salt",
            :optional_ingredients => "1/2 cup shredded coconut, 1/2 cup seeds (flax, chia, sunflower), cinnamon to taste",
            :prep_time => "10 minutes",
            :total_time => "45 minutes",
            :cost => "under $5 per serving",
            :instructions => "In a large bowl, combine all ingredients except for the dried fruit. Spread the mixture evenly onto a baking sheet. Bake in preheated oven at 350 degrees F for 30 minutes. Remove from oven an allow to cool. Combine with 1 cup dried fruit and optional ingredients as desired. Enjoy the granola alone or combine with your milk of choice."
            },
            
        :simple_salad => {
            :essential_ingredients => "greens (romaine, arugula, spring mix), sweets (cranberries, apple slices, grapes, cucumbers, tomatoes), protein (cooked shredded chicken, drained can of tuna, cooked beans), crunchies (nuts of choice, sunflower seeds)",
            :optional_ingredients => "salt/ pepper or your favorite herbs or dressing to taste",
            :prep_time => "5 minutes",
            :total_time => "5 minutes",
            :cost => "under $5 per serving",
            :instructions => "In a large bowl, combine all ingredients. Serve with optional ingredients as desired."
            }
    }

    #call keys and values for a specific recipe selection    
    puts recipes[selection]  

    #define method to call keys and values for recipes selection
    def print_hash(hash)
        hash.each do |key,value|
            puts "#{key}: #{value}"
        
        end
    end

    print_hash(recipes[selection])
    puts "Do you want to see another recipe? Yes or no?"
    
    repeat = gets.chomp
    
    if repeat == "no"
        puts "Thanks for checking out this recipes database. Have a nice day!"
    else repeat = "yes"
        puts "For less than $5, we have the following suggested recipes: avocado egg sandwich, chia pudding, two ingredient pizza dough, easy granola, simple salad. Which would you like to see?"
    end

end

