class RemoveOrdersFromEmployees < ActiveRecord::Migration[5.1]
  def change
    remove_column :employees, :orders
    remove_column :employees, :employees
  end
end
