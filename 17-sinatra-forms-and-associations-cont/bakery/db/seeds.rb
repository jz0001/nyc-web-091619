Donut.destroy_all
Designer.destroy_all

puts 'Making designers'
d1 = Designer.create(name: 'Oberon')
d2 = Designer.create(name: 'Guy Fieri')
d3 = Designer.create(name: 'Bobby Flay')
d4 = Designer.create(name: 'Paul Hollywood')

puts 'Making some donut relationships'
d1.donuts.create(flavor: 'meatloaf', price: 1.99)
d1.donuts.create(flavor: 'lamb rind', price: 1.99)
d2.donuts.create(flavor: 'buffalo wing', price: 1.99)
d2.donuts.create(flavor: 'gravy', price: 1.99)
d3.donuts.create(flavor: 'chorizo and pickled onion', price: 1.99)
d3.donuts.create(flavor: 'truffle turkey pot pie with cranberry crumble', price: 1.99)
d4.donuts.create(flavor: 'sourdough', price: 1.99)
d4.donuts.create(flavor: 'baguette', price: 1.99)

puts 'All done'
