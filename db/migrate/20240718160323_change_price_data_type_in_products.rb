class ChangePriceDataTypeInProducts < ActiveRecord::Migration[7.1]
  def up
    Product.where(price: nil).update_all(price: 0.0)
    change_column :products, :price, :float, default: 0.0, null: false
  end

  def down
    change_column :products, :price, :decimal
  end
end
