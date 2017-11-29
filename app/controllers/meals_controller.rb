class MealsController < ApplicationController

  def create
    @meal = Meal.new(name: params[:name], price: params[:price])
    redirect_to orders_path
  end

  def new
    @meal = Meal.new
  end

  def list
    # list all the meals from 1 - n on the index page for meals
    @meals = Meal.all.to_a
  end
end
