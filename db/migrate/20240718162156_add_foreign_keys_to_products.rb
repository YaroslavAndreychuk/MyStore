class AddForeignKeysToProducts < ActiveRecord::Migration[7.1]
  def change
    add_reference :products, :category, foreign_key: true, index: true
    add_reference :products, :supplier, foreign_key: { on_delete: :restrict }, index: true
  end
end
