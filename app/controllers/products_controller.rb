class ProductsController < ActionController::Base
  def index
    render json: Product.all
  end
end
