class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:name], params[:password], role: 'manager', orders: {}, customers: {})
  end

  def new
    @employee = Employee.new
  end

  def add_order(order)
    @employee.order.append(order) #append an order to order attribute
  end
end
