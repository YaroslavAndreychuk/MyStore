class CreateItems < ActiveRecord::Migration[7.1]
  def change
    create_table :items do |t|
      t.string :name, null: false
      t.text :description
      t.decimal :price, precision: 10, scale: 2, default: 0.0, null: false
      t.integer :stock_quantity, default: 0, null: false

      t.timestamps
    end

    add_index :items, :name, unique: true
  end
end
