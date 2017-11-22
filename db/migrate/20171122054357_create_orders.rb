class CreateOrders < ActiveRecord::Migration[5.1]
  def change
    create_table :orders do |t|
      t.meal :meal
      t.employee :employee
      t.customer :customer

      t.timestamps
    end
  end
end
