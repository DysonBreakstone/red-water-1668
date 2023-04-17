# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
# Just to Commit

@chef_1 = Chef.create(name: "chef 1")
@chef_2 = Chef.create(name: "chef 2")
@chef_3 = Chef.create(name: "chef 3")

@dish_1 = @chef_1.dishes.create(name: "dish 1", description: "1 dish", calories: 100, ingredients: ["ingredient 1", "ingredient 2"])
@dish_2 = @chef_1.dishes.create(name: "dish 2", description: "2 dish", calories: 200, ingredients: ["ingredient 3", "ingredient 4"])
@dish_3 = @chef_1.dishes.create(name: "dish 3", description: "3 dish", calories: 300, ingredients: ["ingredient 5", "ingredient 6"])
@dish_4 = @chef_2.dishes.create(name: "dish 4", description: "4 dish", calories: 400, ingredients: ["ingredient 7", "ingredient 8"])
@dish_5 = @chef_2.dishes.create(name: "dish 5", description: "5 dish", calories: 500, ingredients: ["ingredient 9", "ingredient 10"])
@dish_6 = @chef_2.dishes.create(name: "dish 6", description: "6 dish", calories: 600, ingredients: ["ingredient 11", "ingredient 12"])
@dish_7 = @chef_2.dishes.create(name: "dish 7", description: "7 dish", calories: 700, ingredients: ["ingredient 13", "ingredient 14"])
@dish_8 = @chef_3.dishes.create(name: "dish 7", description: "8 dish", calories: 800, ingredients: ["ingredient 15", "ingredient 16"])
@dish_9 = @chef_3.dishes.create(name: "dish 8", description: "9 dish", calories: 900, ingredients: ["ingredient 17", "ingredient 18"])
@dish_10 = @chef_3.dishes.create(name: "dish 9", description: "10 dish", calories: 1000, ingredients: ["ingredient 19", "ingredient 20"])
@dish_11 = @chef_3.dishes.create(name: "dish 10", description: "11 dish", calories: 1100, ingredients: ["ingredient 21", "ingredient 22"])
@dish_12 = @chef_3.dishes.create(name: "dish 10", description: "12 dish", calories: 1200, ingredients: ["ingredient 23", "ingredient 24"])