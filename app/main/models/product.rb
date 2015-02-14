class Product < Volt::Model
  field :name, String
  field :price, String
  validate :name, length: 5

end
