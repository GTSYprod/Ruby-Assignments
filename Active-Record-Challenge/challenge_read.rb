require_relative 'ar.rb'

number_of_products = Product.count
c_products_above_ten = Product.where("price > ? AND LOWER(name) LIKE ?", 10, "C%").pluck(:name).join("\n")
low_stock_products = Product.where("stock_quantity < ?", 5).count

puts "There are #{number_of_products} in the products table."
puts "\n#{c_products_above_ten}"
puts "\nThere are #{low_stock_products} products that are low in stock."

product_name = Product.first
category_name = product_name.category.name
puts "#{product_name.name} belongs to #{category_name}"

category = Category.find_by(name: "Beverages")
new_product = category.products.create(
  name: "Sludge",
  description: "Applies the Poison status effect at the start of battle",
  price: 99,
  stock_quantity: 10
)
puts new_product.inspect

expensive_products = category.products.where("price > ?", 50)
puts "Products in #{category_name} over $50"
expensive_products.each do |i|
  puts " - #{i.name}: $#{i.price}"
end