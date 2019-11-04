# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroy the monsters'
Monster.destroy_all

puts 'Create the monsters'
Monster.create([
  {name: "Frankenstein's Monster", speed: 5, scariness: 4},
  {name: "Mike", speed: 7, scariness: -6},
  {name: "Candy Man", speed: 7, scariness: 11},
  {name: "Pennywise", speed: 87.6, scariness: 11},
  {name: "Chucky", speed: 3, scariness: 9}
])