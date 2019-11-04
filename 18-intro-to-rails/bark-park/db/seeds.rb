# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts 'Destroying your dawgs. 😢'
Dog.destroy_all

puts 'Making you some new dogs!!! 🙌'
25.times do
  name = Faker::Creature::Dog.name
  breed = Faker::Creature::Dog.breed
  age = (1...15).to_a.sample
  Dog.create(name: name, breed: breed, age: age)
end