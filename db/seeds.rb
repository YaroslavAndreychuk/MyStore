# Очистка базы данных
puts "Cleaning database..."
Category.delete_all
Supplier.delete_all
Product.delete_all

# Создание категорий и поставщиков
puts "Creating categories and suppliers..."
Category.create(name: 'Electronics')
Category.create(name: 'Books')

Supplier.create(name: 'Supplier 1')
Supplier.create(name: 'Supplier 2')

# Создание продуктов с разнообразными атрибутами
puts "Creating products..."
Product.create(name: 'Product 1', description: 'Description 1', price: 100.0, stock_quantity: nil, category_id: Category.first.id, supplier_id: Supplier.first.id)
Product.create(name: 'Product 2', description: nil, price: 200.0, stock_quantity: 20, category_id: Category.second.id, supplier_id: Supplier.second.id)
Product.create(name: 'Product 3', description: 'Description 3', price: 1, stock_quantity: 30, category_id: nil, supplier_id: Supplier.first.id)

puts "Seeding finished."
