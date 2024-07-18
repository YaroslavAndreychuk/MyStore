class ChangePriceTypeInProducts < ActiveRecord::Migration[7.1]
  def up
    change_column :products, :price, :decimal, precision: 10, scale: 2, default: 0.0
  end

  def down
    change_column :products, :price, :float
  end
end
