class AddMealId < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :meal_id, :integer
    add_column :orders, :employee_id, :integer
  end
end
