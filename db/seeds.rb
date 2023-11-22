# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

puts "Flushing the database.."
Restaurant.destroy_all
puts "Flushed"

puts "Building the restaurants one brick at a time"
restaurants = [
  {name: "Pizza Inn", address: "84 New Road Accra", phone_number: "+233209990099", category: "belgian"},
  {name: "Star Bites", address: "Dansoman, Sahara", phone_number: "+2332093099", category: "french"},
  {name: "Lord of the Wings", address: "Cantoments", phone_number: "+233249580093", category: "japanese"},
  {name: "Breakfast2Breakfast", address: "Osu, Accra", phone_number: "+233209340099", category: "italian"},
  {name: "Chicken Man", address: "Dansoman Exhibiton", phone_number: "+233204590595", category: "chinese"},
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Finished building #{restaurant.name} ready to take orders"
end

puts "All restaurants ready!!"
