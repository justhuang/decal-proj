class OrdersController < ApplicationController

  def create
    @order = Order.new(meal: @meal, employee: @employee, delivered: false)
  end

  def new
    @order = Order.new
  end

  def add
    #add orders to employee.orders
    meal = params[:meal]
    address = params[:address]
    name = params[:name]
    employees = Employee.all
    ord = employees.map{|emp| emp.orders.length}
    employee = employees[ord.index(ord.min)]
    @order = Order.new(meal: meal, employee: employee, name: name, address: address)
    #save the order to the DB
    @order.save()
  end

  def list_my_orders(employee)
    #list all orders that belong to specific employee
    employee.order.each do |order|
      puts order
    end
  end

  def mark_as_delivered(employee)
    #change delivered attribute from False to True for the specific employee
    employee.orders.each do |order|
      order.delivered = True
      #not sure whether this would work. I feel like the order is a local state, so manipulating its attributes wouldn't cause changes.
    end
  end
end
