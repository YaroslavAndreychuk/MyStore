class DropProductsTable < ActiveRecord::Migration[7.1]
  def change
    drop_table :products_copy
  end
end
