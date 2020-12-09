class InformationsController < ApplicationController
  before_action :search_product, only: [:search]


  def index
    
  end

  def new
    @admin_information = AdminInformation.new
  end

  def create
    @admin_information = AdminInformation.new(information_params)
    if @admin_information.valid?
      @admin_information.save
      redirect_to informations_path
    else
      render :new
    end
  end

  def show
    @information = Information.find(params[:id])
    @informationgenres = InformationGenre.where(information_id: @information.id)
    @comments = @information.comments.includes(:user)
    @comment = Comment.new
    @rate_len = @comments.map(&:rate).length
    @rate_sum = @comments.map(&:rate).sum
    @rate_avg = (@rate_sum.to_f / @rate_len).round(1)
  end

  def search
    @results = @p.result
  end

  private

  def information_params
    params.require(:admin_information).permit(:image, :shop_name, :prefecture_id, :municipalities, :address, :building , :phone_number, :access, :business_hour, :holiday, :budget, :seat_number, :tobacco_id, :child_id, :remarks, wi_fi_id: [], cashless_id: [], genre_id: []).merge(admin_id: current_admin.id)
  end

  def search_product
    @p = Information.ransack(params[:q])  # 検索オブジェクトを生成
  end
end
