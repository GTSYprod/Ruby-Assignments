require_relative 'ar.rb'

product_one = Product.create(
  name: "Ether",
  description: "Restore 20MP",
  price: 100,
  stock_quantity: 10
)

product_two = Product.new
product_two.name = "Mega-Ether"
product_two.description = "Restore 20MP to all party members"
product_two.price = 500
product_two.stock_quantity = 10
product_two.save

product_three = Product.new do |i|
  i.name = "Elixir"
  i.description = "Restore all HP and MP"
  i.price = 100
  i.stock_quantity = 10
end
product_three.save

product_bad = Product.new do |i|
  i.name = "Panacea"
  i.description = "Heals all ailments"
end
product_bad.save

puts product_one.inspect
puts product_two.inspect
puts product_three.inspect
puts product_bad.inspect
puts product_bad.errors.full_messages