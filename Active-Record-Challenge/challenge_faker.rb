require_relative 'ar.rb'

10.times do
  category = Category.create!(
    name: Faker::Commerce.department(max: 1)
  )

  puts "Created category: #{category.name}"

  10.times do
    begin
      product = Product.create!(
        name: Faker::Commerce.product_name,
        description: Faker::Lorem.paragraph(sentence_count: 3),
        price: Faker::Commerce.price(range: 5.0..200.0),
        stock_quantity: Faker::Number.between(from: 1, to: 100),
        category_id: category.id
      )

      puts " - Created product: #{product.name} ($#{product.price})"
    rescue ActiveRecord::RecordInvalid => e

      puts " - Skipped duplicate, retrying..."
      retry
    end
  end
end