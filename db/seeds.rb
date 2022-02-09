# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

warehouse_1 = Warehouse.create(location: 'Atlanta')
warehouse_1.items.create(name: 'Shirt', quantity: 20, price: 18)
warehouse_1.items.create(name: 'Pants', quantity: 30, price: 45)

warehouse_2 = Warehouse.create(location: 'Chicago')
warehouse_2.items.create(name: 'Ball Cap', quantity: 11, price: 25)
warehouse_2.items.create(name: 'Socks', quantity: 40, price: 10)
warehouse_2.items.create(name: 'Watch', quantity: 5, price: 100)
warehouse_2.items.create(name: 'Necklace', quantity: 40, price: 50)
