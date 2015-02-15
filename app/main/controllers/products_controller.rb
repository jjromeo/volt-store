class ProductsController < Volt::ModelController
  model :store

  def index
  end

  def manage
    @product_added = false
  end

  def new
  end

  def add_product
    store._products << {name: page._new_product._name, price: page._new_product._price}
    if page._new_product._name.length > 4
      flash._successes << 'Your product has been added'
    else
      flash._errors << 'Product name must be higher than 4 characters, please try again'
    end
  end

  private

  def products_path
    params._controller.or('products') + '/' + params._action.or('index')
  end

end
