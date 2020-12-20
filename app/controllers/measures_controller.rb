class MeasuresController < ApplicationController
  def index
    @measures = Measure.includes(:information)
  end

  def new
    @information_measure = InformationMeasure.new
    # binding.pry
  end

  def create
    @information_measure = InformationMeasure.new(measure_params)
    binding.pry
    if @information_measure.valid?
      @information_measure.save
      redirect_to informations_path(@information_measure.information_id)
    else
      render :new
    end
  end

  private

  def measure_params
    params.require(:information_measure).permit(:content, :image, general_id: [] ).merge(information_id: params[:information_id])
  end
end