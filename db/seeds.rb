# db/seeds.rb

# Create categories
Category.create(name: 'Electronics')
Category.create(name: 'Books')

# Create suppliers
Supplier.create(name: 'Supplier 1')
Supplier.create(name: 'Supplier 2')

# Create products
Product.create(name: 'Product 1', description: 'Description 1', price: 100.0, stock_quantity: nil, category_id: Category.find_by(name: 'Electronics').id, supplier_id: Supplier.find_by(name: 'Supplier 1').id)
Product.create(name: 'Product 2', description: nil, price: '200.0abc', stock_quantity: 20, category_id: Category.find_by(name: 'Books').id, supplier_id: Supplier.find_by(name: 'Supplier 2').id)
Product.create(name: 'Product 3', description: 'Description 3', price: 222, stock_quantity: 30, category_id: nil, supplier_id: Supplier.find_by(name: 'Supplier 1').id)
