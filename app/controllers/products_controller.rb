class ProductsController < ApplicationController

  def index
  @products = Product.all
  # @alphaSort = @foods.sort_by {|obj| obj.name}
  render :index
  end


  end
