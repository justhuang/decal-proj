class CustomersController < ApplicationController
  def create
    @customer = Customer.new(name: [params: name], address: [params: address], meal: nil)
  end

  def new
    @customer = Customer.new
  end

  def list
    @customers = Customers.all
  end

  def order(meal)
    name = meal.name
    price = meal.price
    #get the name and price of the meal
    meal = Meal.new(name: name, price: price)
    #create a new meal with attributes 
    @customer.meal = meal
    #assign it to the current customer
  end
end
