require_relative 'ar.rb'

product_explode = Product.find_by(name: "Elixir")
product_explode.destroy