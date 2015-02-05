class ProductsController < Volt::ModelController
  def index
  end

  def manage
  end

  private

  def products_path
    params._controller.or('products') + '/' + params._action.or('index')
  end

end
