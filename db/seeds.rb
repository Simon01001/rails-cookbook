# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
puts "creating recipes"
Recipe.create(name: "Spicy Chickpea Tacos", description: "Flavorful tacos filled with spiced chickpeas, avocado, and a zesty lime crema. Perfect for a quick weeknight dinner.", rating: 4.5 )
Recipe.create(name: "Creamy Mushroom Risotto", description: "A rich and creamy risotto made with arborio rice, fresh mushrooms, and a sprinkle of parmesan. Comfort food at its finest!", rating: 3.8)
Recipe.create(name: "Zucchini Noodle Salad", description: "A refreshing salad featuring spiralized zucchini, cherry tomatoes, and a tangy lemon dressing. Light, healthy, and delicious!", rating: 4.3)
Recipe.create(name: "Chocolate Avocado Mousse", description: "A decadent, dairy-free chocolate mousse made with ripe avocados and cocoa powder. Indulgence without the guilt!", rating: 4.7)
puts "recipes created"
