class MealsController < ApplicationController

  def create
    @meal = Meal.new(name: params[:name])
  end

  def new
    @meal = Meal.new
  end

  def list
    # list all the meals from 1 - n on the index page for meals
    @meals = Meal.all
    @meal = Meal.find(params[:name])
  end

  def add
    @customer.meals = Meal.new(name: params[:name], price: params[:price])
    #the code above probably doesn't work. The idea is to create a new meal and assign it to a customer
    #Each meal has multiple customers, but each customer can only have one meal (for simplicity)
  end
end
