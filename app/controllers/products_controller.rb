class ProductsController < ApplicationController
  def index
    @products = Product.sort_date
    @lowcost = Product.sort_cost
    @madelocal = Product.sort_local
    @mostreviews = Product.most_reviews
  end

  def show
    @product = Product.find(params[:id])
    @reviews = @product.reviews

  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    if @product.save
      redirect_to products_path
    else
      render :new
    end
  end

  def edit
    @product = Product.find(params[:id])
  end

  def update
    @product = Product.find(params[:id])
    if @product.update(product_params)
      redirect_to product_path
    else
      render :edit
    end
  end

  def destroy
    @product = Product.find(params[:id])
    @product.destroy
    redirect_to products_path
  end

private
  def product_params
    params.require(:product).permit(:name, :cost, :country, :image)
  end
end
