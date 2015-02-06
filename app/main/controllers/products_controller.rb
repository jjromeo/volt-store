class ProductsController < Volt::ModelController
  model :store

  def index
  end

  def manage
  end

  def new
  end

  def add_product
    _products << {name: page._new_product._name, price: page._new_product._price}
  end

  private

  def products_path
    params._controller.or('products') + '/' + params._action.or('index')
  end

end
