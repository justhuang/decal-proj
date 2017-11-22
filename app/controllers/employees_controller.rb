class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:name], params[:password], role: 'manager', orders: {}, customers: {})
  end

  def new
    @employee = Employee.new
  end

  def assign_customer(customer)
    #assign each employee a customer
    #each employee should have multiple customers
    @employee.customer #append customer attribute
  end

  def add_order(order)
    @employee.order #append an order to order attribute
  end
end
