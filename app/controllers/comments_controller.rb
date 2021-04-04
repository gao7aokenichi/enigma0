class CommentsController < ApplicationController
  def create
   comment = Comment.create(comment_params)
   redirect_to "/enigmas/#{comment.enigma.id}"
  end

  private
  def comment_params
    params.require(:comment).permit(:text).merge(user_id: current_user.id, enigma_id: params[:enigma_id])
  end
end
