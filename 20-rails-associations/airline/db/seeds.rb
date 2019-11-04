# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts '✈️ destroying all ya jet companies ✈️'
JetCompany.destroy_all

puts 'Building ya jet companies'
JetCompany.create([
  {name: 'Delta'},
  {name: 'American'},
  {name: 'Aer Lingus'},
  {name: 'Aeroflot'},
  {name: 'Cathay Pacific'}
  ])