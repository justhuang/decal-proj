class EmployeesController < ApplicationController
  def create
    @employee = Employee.new(params[:employee][:name], params[:employee][:password], role: 'manager')
  end
  def new
    @employee = Employee.new
  end
  def manager_dashboard
  end
end
