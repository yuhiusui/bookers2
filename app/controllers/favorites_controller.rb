class FavoritesController < ApplicationController
  def create
  	book = Book.find(paramas[:book_id])
  	favorite = current_user.favorites.new(book_id: book.id)
  	favorite.save
  	redirect_to :back
  end

  def destroy
  	book = Book.find(params[:book_id])
  	faborite = current_user.favorites.find_by(book_id: book.id)
  	favorite.destroy
    redirect_to :back
  end
end
