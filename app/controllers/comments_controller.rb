class CommentsController < ApplicationController
  def create
    comment = Comment.create!(comments_params)

    redirect_to comment.post, notice: 'O seu comentario foi enviado...'
  end


  private

  def comments_params
    params.require(:comment).permit(:author, :body, :post_id)
  end
end