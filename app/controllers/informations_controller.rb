class InformationsController < ApplicationController
  def index

  end

  def new
    @admin_information = AdminInformation.new
  end

  def create
    @admin_information = AdminInformation.new(information_params)
    # if @admin_information.valid?
    if @admin_information.save
      redirect_to action: :index
    else
      render new_information_path
    end
  end

  private

  def information_params
    params.require(:admin_information).permit(:image, :shop_name, :prefecture_id, :municipalities, :address, :building , :phone_number, :access, :business_hour, :holiday, :budget, :seat_number, :tobacco_id, :child_id, :remarks, wi_fi_id: [], cashless_id: [], genre_id: []).merge(admin_id: current_admin.id)
  end

end
