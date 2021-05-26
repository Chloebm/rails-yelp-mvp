# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Restaurant.destroy_all
  restaurants = Restaurant.create([{ name: "Dishoom", address: "london", category: "chinese"}, { name: "Pizza Pilgrims", address: "manchester", category: "italian"}, { name: "SushiSamba", address: "london", category: "japanese"}, { name: "Frenchy", address: "paris", category: "french"}, { name: "Dumplings Legend", address: "london", category: "chinese"}])
