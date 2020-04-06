class UsersController < ApplicationController
  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	@books = Book.find(params[:id])
  end
  end
  def index
  	@user = User.find(params[:id])
  	@users = User.all
  	@book = Book.new
  end
  def new
  	@user = User.new
  end
  def create
  	@user = User.new(user_params)
  	@user_id = current_user.id
  	@user.save
  	redirect_to users_path
  end
  def edit
  	@user = User.find(params[:id])
  end
  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id)
  private
  def user_params
  	params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
