class RenameItemsToProducts < ActiveRecord::Migration[7.1]
  def change
    rename_table :items, :products_copy
  end
end
