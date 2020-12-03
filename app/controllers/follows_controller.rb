class FollowsController < ApplicationController
  before_action :authenticate_user!
  # before_action :set_follow

  def create
      information = Information.find(params[:information_id])
      follow = Follow.create(user_id: current_user.id, information_id: information.id)
      redirect_to information_path(information.id)
  end

  def destroy
      information = Information.find(params[:information_id])
      follow = Follow.find_by(user_id: current_user.id, information_id: information.id)
      follow.delete
      redirect_to information_path(information.id)
  end

  # private

  # def set_follow
  #     @information = Information.find(params[:information_id])
  # end
end
