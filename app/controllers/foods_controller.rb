class FoodsController < ApplicationController

  def home
  @foods = Food.all
  # @alphaSort = @foods.sort_by {|obj| obj.name}
  render :home
  end

  # def index
  #     @foods = Food.all
  #     render :index
  #   end

    def show
      @food = Food.find(params[:id])
      render :show
    end

    def new
      @food = Food.new
      render :new
    end

    def create
    # list_params needed for list to appear. otherwise it will come up as blank
    # based on lessons (@list) can be added at the end of lists_path but still needs (list_params to work)
      @food = Food.new(food_params)
      if @food.save
        flash[:notice] = "ADDED A PRODUCT"
        redirect_to  foods_path
      else
        render :new
      end
    end

    def edit
      @food = Food.find(params[:id])
      render :edit
    end

    def update
      @food = Food.find(params[:id])
      if @food.update(food_params)
        redirect_to
      else
        render :edit
      end
    end

    def destroy
      @food = Food.find(params[:id])
      if @food.destroy
        flash[:notice] = "Product has been deleted"
        redirect_to foods_path
      else
        render :new
      end
    end

    private
    def food_params
      params.require(:list).permit(:name, :image, :description, :area)
    end

  end
