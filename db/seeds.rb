# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

%w(Jessica Clara Joe John).each do |name|
  Employee.create username: name, password: '123', role: 'manager'
end

%w(Pasta Pizza Sandwich Burger Burrito).each do |food|
  Meal.create name: food, price: rand(6..15)
end

sarah = Employee.create username: 'Sarah', password: '123', role: 'manager'
taco = Meal.create name: 'taco', price: rand(6..15)
Order.create meal: taco, employee: sarah, name: 'Justin', address: '2'
