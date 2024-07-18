# app/models/product.rb
class Product < ApplicationRecord
    attribute :description, :text
    attribute :category_id, :integer
    attribute :supplier_id, :integer
    attribute :category_id, :integer

end
