class RenameStockQuantityToQuantityInStock < ActiveRecord::Migration[7.1]
  def change
    rename_column :products, :stock_quantity, :quantity_in_stock
  end
end
