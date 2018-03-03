class ProductsController < ApplicationController

  def index
    @products = Product.all.order(created_at: :desc)
    # @ratings = Rating.all
  end

  def show
    @product = Product.find params[:id]
    @ratings = @product.ratings.order(created_at: :desc)
    # @products = @category.products.order(created_at: :desc)
  end

  # def new
  # 	@rating = Rating.new
  # end

  # private

  # def rating_params
  #   params.require(:rating).permit(
  #     :description
  #     :rating
  #   )
  # end

end
