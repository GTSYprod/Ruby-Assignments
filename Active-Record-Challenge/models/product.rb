class Product < ActiveRecord::Base
  # This AR object is linked with the products table.

  # A product has a many to one relationship with a category.
  # The products table has a category_id foreign key.
  # In other words, a product belongs to a category.
  belongs_to :category
  validates :name, :description, :price, :stock_quantity, presence: true
  validates :name, length: { minimum: 4 }
  validates :name, uniqueness: true
end

# There are 5 columns in the products table
# cid  name            type          notnull  dflt_value  pk
# ---  --------------  ------------  -------  ----------  --
# 0    id              INTEGER       1                    1
# 1    name            varchar(255)  0                    0
# 2    description     varchar(255)  0                    0
# 3    price           decimal(8,2)  0                    0
# 4    stock_quantity  INTEGER       0                    0
# 5    category_id     INTEGER       0                    0
# 6    created_at      datetime      0                    0
# 7    updated_at      datetime      0                    0