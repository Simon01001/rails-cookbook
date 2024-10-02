# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
Bookmark.destroy_all
Recipe.destroy_all
require "open-uri"
require "json"

categories = ["Pasta", "Seafood", "Chicken", "Breakfast"]

def recipe_builder(id)
  url = "https://www.themealdb.com/api/json/v1/1/lookup.php?i=#{id}"
  meals_serialized = URI.parse(url).read
  meal = JSON.parse(meals_serialized)

  Recipe.create!(name: meal["meals"][0]["strMeal"], description: meal["meals"][0]["strInstructions"], image_url: meal["meals"][0]["strMealThumb"], rating: 0.0)
end

categories.each do |category|
  url = "https://www.themealdb.com/api/json/v1/1/filter.php?c=#{category}"
  meals_serialized = URI.parse(url).read
  meals = JSON.parse(meals_serialized)

  meals["meals"].each do |meal|
    recipe_builder(meal["idMeal"])
  end
end
