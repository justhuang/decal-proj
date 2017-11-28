class OrdersController < ApplicationController


  def new
    @order = Order.new
  end

  def create
    #add orders to employee.orders
    meal = params[:meal]
    address = params[:address]
    name = params[:name]
    employees = Employee.all
    #ord = employees.map{|emp| emp.orders.length}
    #employee = employees[ord.index(ord.min)]
    ordersize = []
    employees.to_a.each do |emp|
      if emp.orders.to_a.empty?
        employee = emp
      else
        ordersize += [emp.orders.to_a.length, emp]
      end
    end
    if not ordersize.empty?
      min = ordersize[0][0]
      ordersize.each do |o|
        if o[0] < min
          min = o[0]
          employee = o[1]
        end
      end
    end
    @order = Order.new(address: address, name: name)
    @order.employee = employee
    @order.meal = meal
    #save the order to the DB
    @order.save()
    redirect_to thanks_path
  end

  def list
    #list all orders that belong to specific employee
    Orders.all.to_a.each do |order|
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
