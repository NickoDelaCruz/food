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

    def edit
      @food = Food.find(params[:food_id])
      @Review = Review.find(params[:id])
      render :edit
    end

    def update
      @Review = Review.find(params[:id])
      if @review.update(review_params)
        redirect_to foods_path
      else
        render :edit
      end
    end

    def destroy
      @review = Review.find(params[:id])
      @review.destroy
      redirect_to foods_path
    end

  private
    def review_params
      params.require(:review).permit(:description)
    end
  end
