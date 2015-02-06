class Product < Volt::Model
  field :name, String
  field :price, String
  validate :_name, length: 5

end
