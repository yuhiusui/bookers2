class BookCommentsController < ApplicationController
  before_action :authenticate_user!
  # before_action :correct_user, only: [:destroy]

  def create
  	@book = Book.find(params[:book_id])
    comment = @book.book_comments.new(book_comment_params)
    @book_comments = @book.book_comments.order("id DESC")
    comment.user_id = current_user.id
    comment.save
    # redirect_back(fallback_location: root_path)
  end

  def destroy
    @book = Book.find(params[:book_id])
    @book_comments = @book.book_comments.order("id DESC")
  	comment = BookComment.find(params[:id])
  	comment.destroy
  	# redirect_back(fallback_location: root_path)
  end

  private
	def book_comment_params
	    params.require(:book_comment).permit(:comment)
	end
end

