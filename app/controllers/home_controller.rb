class HomeController < ApplicationController
  def index
    @informations = Information.order("updated_at DESC")
    @informationgenres = InformationGenre.all
  end
end
