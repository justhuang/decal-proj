class OrdersController < ApplicationController

  def create
    @order = Order.new(meal: @meal, employee: @employee, customer: @customer, delivered: false)
  end

  def new
    @order = Order.new
  end

  def list_undelivered_orders
    #list meals where the delivered attribute is False
    orders = Order.all
    orders.select |order| {
      order.delivered == false
    }
  end

  def add
    #add orders to employee.orders
    meal = params[:meal]
    address = params[:address]
    name = params[:name]
    employees = Employee.all
    ord = employees.map{|emp| emp.order.length}
    employee = employees[ord.index(ord.min)]
    new_order = Order.new(meal: meal, employee: employee, name: name, address: address)
    #save the order to the DB
    @employee.add_order(new_order)
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
