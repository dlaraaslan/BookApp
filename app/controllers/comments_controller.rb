class CommentsController < ApplicationController
  http_basic_authenticate_with name: "admin", password: "123456", only: :destroy
  def index
    @comments =Comment.all
  end
  def create
    @book = Book.find params[:book_id]
    @comment = @book.comments.create(comment_params)
    redirect_to @book
  end
  def destroy
    @book = Book.find params[:book_id]
    @comment = @book.comments.find params[:id]
    @comment.destroy
    redirect_to @book
  end

  private
  def comment_params
    params.require(:comment).permit(:commenter, :body)
  end
end
