class CreateEmployees < ActiveRecord::Migration[5.1]
  def change
    create_table :employees do |t|
      t.string :username
      t.string :password
      t.string :role
      t.string :orders
      t.string :employees

      t.timestamps
    end
  end
end
