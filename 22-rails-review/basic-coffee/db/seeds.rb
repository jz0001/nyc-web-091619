# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

puts "Destroyin' ya drinkz"
Drink.destroy_all

puts "Buildin' ya drinkz"
Drink.create(name: "Flat White", iced: true, price: 1.99, ingredients: 'milk and coffeee, duh')
Drink.create(name: "Soy Latte", iced: false, price: 3.00, ingredients: 'milk and coffeee, duh')
Drink.create(name: "Green Tea Latte", iced: false, price: 1.99, ingredients: 'milk and coffeee, duh')
Drink.create(name: "Mocha", iced: false, price: 1.99, ingredients: 'milk and coffeee, duh')
Drink.create(name: "Pumpkin Cream Cold Brew", iced: true, price: 1.99, ingredients: 'milk and coffeee, duh')