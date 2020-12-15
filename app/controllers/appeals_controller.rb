class AppealsController < ApplicationController
  def index
    @appeals = Appeal.includes(:information)
  end

  def new
    @appeal = Appeal.new
  end

  def create
    @appeal = Appeal.new(appeal_params)
    if @appeal.valid?
      @appeal.save
      redirect_to informations_path(@appeal.information_id)
    else
      render :new
    end
  end

  private

  def appeal_params
    params.require(:appeal).permit(:appeal_point, :explanation, images: [] ).merge(information_id: params[:information_id])
  end

end