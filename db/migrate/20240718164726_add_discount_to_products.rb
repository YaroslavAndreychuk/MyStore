class AddDiscountToProducts < ActiveRecord::Migration[7.1]
  def up
    add_column :products, :discount, :decimal, precision: 10, scale: 2

    Product.reset_column_information
    Product.find_each do |product|
      product.update(discount: calculate_discount(product.price))
    end
  end

  def down
    remove_column :products, :discount
  end

  private

  def calculate_discount(price)
    price * 0.1  
  end
end
