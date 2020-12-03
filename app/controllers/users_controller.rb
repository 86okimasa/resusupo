class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @follows = Follow.where(user_id: @user.id)
  end
end
