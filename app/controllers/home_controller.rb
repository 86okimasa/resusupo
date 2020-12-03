class HomeController < ApplicationController
  def index
    @informations = Information.order("updated_at DESC")
  end
end
