class FavoritesController < ApplicationController
  def create
  	book = Book.find(params[:book_id])
  	favorite = current_user.favorites.new(book_id: book.id)
  	favorite.save
    redirect_back(fallback_location: root_path)
  end

  def destroy
  	book = Book.find(params[:book_id])
  	faborite = current_user.favorites.find_by(book_id: book.id)
  	faborite.destroy
    redirect_back(fallback_location: root_path)
  end
end
