class ProductsController < ApplicationController

  def index
  @foods = Food.all
  # @alphaSort = @foods.sort_by {|obj| obj.name}
  render :index
  end


  end
