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


puts "creating recipes"
recipe = Recipe.new(name: "Spicy Chickpea Tacos", description: "Flavorful tacos filled with spiced chickpeas, avocado, and a zesty lime crema. Perfect for a quick weeknight dinner.", rating: 4.5 )
recipe2 = Recipe.new(name: "Creamy Mushroom Risotto", description: "A rich and creamy risotto made with arborio rice, fresh mushrooms, and a sprinkle of parmesan. Comfort food at its finest!", rating: 3.8)
recipe3 = Recipe.new(name: "Zucchini Noodle Salad", description: "A refreshing salad featuring spiralized zucchini, cherry tomatoes, and a tangy lemon dressing. Light, healthy, and delicious!", rating: 4.3)
recipe4 = Recipe.new(name: "Chocolate Avocado Mousse", description: "A decadent, dairy-free chocolate mousse made with ripe avocados and cocoa powder. Indulgence without the guilt!", rating: 4.7)
puts "recipes created"

require "open-uri"

file = URI.parse("https://img.taste.com.au/jdRtM7Ev/w720-h480-cfill-q80/taste/2019/01/chipotle-chicken-tacos-146425-1.jpg").open
recipe.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
recipe.save

file = URI.parse("https://hips.hearstapps.com/delish/assets/17/35/1504128527-delish-mushroom-risotto.jpg").open
recipe2.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
recipe2.save

file = URI.parse("https://playswellwithbutter.com/wp-content/uploads/2023/08/Shaved-Zucchini-Salad-with-Pistachios-Parmesan-8.jpg").open
recipe3.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
recipe3.save

file = URI.parse("https://img.taste.com.au/2SwT0nAy/taste/2016/11/dairy-free-avocado-chocolate-mousse-90600-1.jpeg").open
recipe4.photo.attach(io: file, filename: "nes.png", content_type: "image/png")
recipe4.save
