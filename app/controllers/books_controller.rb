class BooksController < ApplicationController
before_action :authenticate_user!


  def index
  	@book = Book.new
  	@books = Book.all
  	@user = current_user
    @users = User.all
  end

  def show
  	@book = Book.new
    @book_id = Book.find(params[:id])
  	@user = @book_id.user
    # @user = User.find(@book_id.user_id)
  	# @books = @user.books
  end

  def create
  	@book = Book.new(book_params)
  	@book.user_id = current_user.id
  	if @book.save
  		redirect_to book_path(@book.id), notice: 'Book was successfully created.'
  	else
      @books = Book.all
      @user = current_user
  	  render :index
  	end
  end

  def edit
  	@book = Book.find(params[:id])
    # if @book.user_id != current_user
    #   redirect_to book_path(@book)
    # end
  end

  def update
  	@book = Book.find(params[:id])
  	if @book.update(book_params)
  	  redirect_to book_path(@book.id), notice: 'Book was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
  	book = Book.find(params[:id])
  	book.destroy
  	redirect_to books_path, notice: 'Book was successfully destroyed.'
  end

  private
  def book_params
  	params.require(:book).permit(:title, :body, :profile_image)
  end
end
