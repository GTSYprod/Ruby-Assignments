require_relative 'ar.rb'

stock_40 = Product.where("stock_quantity > ?", 40).pluck(:name, :stock_quantity)

stock_40.each do |name, stock_quantity|
  puts "#{name}: #{stock_quantity}"
end

stock_update = Product.where("stock_quantity > ?", 40)
stock_update.update_all("stock_quantity = stock_quantity + 1")
stock_update = stock_update.pluck(:name, :stock_quantity)

stock_update.each do |name, stock_quantity|
  puts "#{name}: #{stock_quantity}"
end