class FoodsController < ApplicationController
  def home
  @foods = Food.all
  # @alphaSort = @foods.sort_by {|obj| obj.name}
  render :home
  end
end
