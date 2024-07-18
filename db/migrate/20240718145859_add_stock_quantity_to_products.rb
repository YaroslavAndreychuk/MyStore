class AddStockQuantityToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :stock_quantity, :integer, default: 0, null: false
    add_index :products, :stock_quantity
  end
end
