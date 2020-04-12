class UsersController < ApplicationController
before_action :authenticate_user!
before_action :ensure_current_user?, only: [:edit, :update]


  def ensure_current_user?
      user = User.find(params[:id])
      redirect_to user_path(current_user) unless user == current_user
  end



  def show
  	@user = User.find(params[:id])
  	@book = Book.new
  	@books = Book.where(user_id: @user.id)
  end
  def index
  	@user = current_user
  	@users = User.all
  	@book = Book.new
  end
  def edit
    @user = User.find(params[:id])
  end

  def update
  	@user = User.find(params[:id])

  	if @user.update(user_params)
  	  redirect_to user_path(@user.id), notice: "You have updated user successfully."
    else
      render :edit
    end
  end

  private
  def user_params
  	params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
