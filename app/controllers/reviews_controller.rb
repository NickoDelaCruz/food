class ReviewsController < ApplicationController
  def new
  @food = Food.find(params[:food_id])
  @review = @food.reviews.new
  end
end
