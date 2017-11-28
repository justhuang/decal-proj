class AddMealId < ActiveRecord::Migration[5.1]
  def change
    add_column :orders, :meal_id
    add_column :orders, :employeeid
  end
end
