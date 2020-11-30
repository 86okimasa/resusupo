class CommentsController < ApplicationController

  def create
    @comment = Comment.create(comment_params)
    if @comment.save
      redirect_to information_path(@comment.information_id)
    else 
      @information = @comment.information
      @comments = @information.comments
      render "information/show"
    end
  end

  private

  def comment_params
    params.permit(:text).merge(user_id: current_user.id, information_id: params[:information_id])
  end

end
