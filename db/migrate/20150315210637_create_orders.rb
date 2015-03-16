class CreateOrders < ActiveRecord::Migration
  def change
    create_table :orders do |t|
      t.string :item
      t.integer :quantity
      t.string :number

      t.timestamps null: false
    end
  end
end
