class DishesController < ApplicationController
  def index
    @dishes = Dish.includes(:information)
  end

  def new
    @dish = Dish.new
  end

  def create
    @dish = Dish.new(dish_params)
    if @dish.valid?
      @dish.save
      redirect_to informations_path(@dish.information_id)
    else
      render :new
    end
  end

  private

  def dish_params
    params.require(:dish).permit(:cooking_name, :cooking_detail, images: [] ).merge(information_id: params[:information_id])
  end

end
