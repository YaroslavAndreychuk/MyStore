class AddStockQuantityToProducts < ActiveRecord::Migration[7.1]
  def change
    add_column :products, :stock_quantity, :integer
    add_index :products, :stock_quantity
  end
end
