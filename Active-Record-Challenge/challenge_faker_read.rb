require_relative 'ar.rb'

Category.all.each do |i|
  puts "\nCategory: #{i.name}"
  i.products.each do |s|
    puts " ##{i.products.index(s) + 1}. #{s.name} - $#{s.price}"
  end
end