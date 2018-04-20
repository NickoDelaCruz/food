class ReviewsController < ApplicationController
  def new
  @food = Food.find(params[:food_id])
  @review = @food.reviews.new
  end


  def create
    @food = Food.find(params[:food_id])
    @review = @food.reviews.new(reviews_params)
    if @food.save
      redirect_to food_path(@reviews.list)
    else
      render :new
    end
  end

end
