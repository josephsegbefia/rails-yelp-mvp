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
  {name: "Pizza Inn", address: "84 New Road Accra", phone_number: "+233209990099", category: "belgian", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1376241347330514946%2FVQWXT9H9_400x400.jpg&tbnid=vKC5UBlyzp3THM&vet=12ahUKEwj7u86DytiCAxUSoUwKHZpcAUcQMygCegQIARBW..i&imgrefurl=https%3A%2F%2Ftwitter.com%2Fpizzainnghana&docid=KUXVZ8nZHCUo3M&w=299&h=299&q=pizza%20inn%20ghana&ved=2ahUKEwj7u86DytiCAxUSoUwKHZpcAUcQMygCegQIARBW"},
  {name: "Star Bites", address: "Dansoman, Sahara", phone_number: "+2332093099", category: "french", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fpbs.twimg.com%2Fprofile_images%2F1469370679%2Fsend_starbite_logo__2__400x400.jpg&tbnid=OAJoGQB08KGhzM&vet=12ahUKEwidotGmytiCAxV_uCcCHa-nBVEQMygJegQIARBO..i&imgrefurl=https%3A%2F%2Ftwitter.com%2FStarbitesgh&docid=C5IYrs18KRD2UM&w=400&h=400&itg=1&q=starbites%20ghana&ved=2ahUKEwidotGmytiCAxV_uCcCHa-nBVEQMygJegQIARBO"},
  {name: "Lord of the Wings", address: "Cantoments", phone_number: "+233249580093", category: "japanese", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.coupons.com.gh%2Fattachments%2Fa6763e5d6d7b5dd8114da30dc5b0703fc6fafafc%2Fstore%2Ffill%2F1000!%2F600!%2F5f374481a9c67e73ffcc4ec3e601fde27d3ffb1fbecd8173b80db86abc66%2Flord-of-the-wings-ghana-logo-1.jpg&tbnid=W9HOFsIOHF5KlM&vet=12ahUKEwinv5LWytiCAxVlp0wKHfNyADYQMygTegQIARBs..i&imgrefurl=https%3A%2F%2Fwww.coupons.com.gh%2Fplaces%2Flord-of-the-wings-cantonments&docid=w7vUPNoK5lIq3M&w=1000&h=600&q=lord%20of%20the%20wings%20ghana&ved=2ahUKEwinv5LWytiCAxVlp0wKHfNyADYQMygTegQIARBs"},
  {name: "Breakfast2Breakfast", address: "Osu, Accra", phone_number: "+233209340099", category: "italian", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Fwww.coupons.com.gh%2Fattachments%2Fcd84634c6d80ac3ff05737ee366b1cf31342ab73%2Fstore%2Ffill%2F1000!%2F600!%2F8c3873119b48a17f7c7ebafa1240a69fc559226fdf1b7facd28756ff249c%2Fbreakfast-to-breakfast-5.jpg&tbnid=bJKAp4HfpFrIsM&vet=12ahUKEwjb_7z2ytiCAxVIqCcCHR5QBMsQMygDegQIARBS..i&imgrefurl=https%3A%2F%2Fwww.coupons.com.gh%2Fplaces%2Fbreakfast-to-breakfast&docid=u9NaT2TnHfCZiM&w=1000&h=600&q=breakfast%202%20breakfast&ved=2ahUKEwjb_7z2ytiCAxVIqCcCHR5QBMsQMygDegQIARBS"},
  {name: "Chicken Man", address: "Dansoman Exhibiton", phone_number: "+233204590595", category: "chinese", image_url: "https://www.google.com/imgres?imgurl=https%3A%2F%2Flookaside.fbsbx.com%2Flookaside%2Fcrawler%2Fmedia%2F%3Fmedia_id%3D100044694650591&tbnid=nCsEOUu165Q5MM&vet=12ahUKEwjG9cTSy9iCAxU6mScCHYXCCnEQMygFegQIARB4..i&imgrefurl=https%3A%2F%2Fm.facebook.com%2Fpeople%2FChickenMan%2F100044694650591%2F%3Flocale%3Dhi_IN&docid=7Afl_qjXouQCyM&w=959&h=960&q=chicken%20man&hl=en&ved=2ahUKEwjG9cTSy9iCAxU6mScCHYXCCnEQMygFegQIARB4"},
]

restaurants.each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Finished building #{restaurant.name} ready to take orders"
end

puts "All restaurants ready!!"
