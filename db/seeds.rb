# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
puts "Cleaning database..."
Restaurant.destroy_all

puts "Creating restaurants..."
dishoom = { name: "Dishoom", address: "7 Boundary St, London E2 7JE", category: "belgian" }
pizza_east =  { name: "Pizza East", address: "56A Shoreditch High St, London E1 6PQ", category: "italian" }
pizza_nico =  { name: "Pizza Nico", address: "45A Nico High St, London E1 6PQ", category: "italian" }
bistro_regent = { name: "Bistro Regent", address: "10 Vincent St, London E3 8JE", category: "french" }
lentrecote = { name: "L'Entrecote", address: "4 Cours du 30 Juillet, 33000 Bordeaux", category: "french" }

[ dishoom, pizza_east, pizza_nico, bistro_regent, lentrecote ].each do |attributes|
  restaurant = Restaurant.create!(attributes)
  puts "Created #{restaurant.name}"
end
puts "Finished!"