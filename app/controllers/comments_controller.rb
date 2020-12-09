class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to information_path(@comment.information_id)
    else 
      @information = @comment.information
      @informationgenres = InformationGenre.where(information_id: @information.id)
      @comments = @information.comments.includes(:user)
      render "informations/show"
    end
  end

  private

  def comment_params
    params.require(:comment).permit(:text, :rate).merge(user_id: current_user.id, information_id: params[:information_id])
  end

end
