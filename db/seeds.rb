# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: "Star Wars" }, { name: "Lord of the Rings" }])
#   Character.create(name: "Luke", movie: movies.first)

# Recipe.destroy_all
# Ingredient.destroy_all
# Tag.destroy_all

recipes_records = JSON.parse(File.read('public\assets\recipes-fr.json'))
len = recipes_records.size
p len

# recipes_records.each_with_index do |record, index|

#     puts "Seeding database...(#{index+1}/#{len})"

#     ingredient_list = record['ingredients']
#     tag_list = record['tags']

#     recipe = Recipe.create(rate: record['rate'], author_tip: record['author_tip'], budget: record['budget'], prep_time: record['prep_time'], name: record['name'], author: record['author'], difficulty: record['difficulty'], people_quantity: record['people_quantity'], cook_time: record['cook_time'], total_time: record['total_time'], image: record['image'], nb_comments: record['nb_comments'])

#     ingredient_list.each do |ingredient|
#         recipe.ingredients.create(name: ingredient)
#     end

#     tag_list.each do |tag|
#         recipe.tags.create(name: tag)
#     end

# end

puts 'Seed complete!'