class HomeController < ApplicationController
  before_action :search_product, only: [:index]

  def index
    @informations = Information.order("updated_at DESC")
  end

  private

  def search_product
    @p = Information.ransack(params[:q])  # 検索オブジェクトを生成
  end
end
