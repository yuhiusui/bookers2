class UsersController < ApplicationController
before_action :authenticate_user!


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
  # def new
  # 	@user = User.new
  # end
  # def create
  # 	@user = User.new(user_params)
  # 	@user.save
  # 	redirect_to users_path
  # end
  def edit
    @user = User.find(params[:id])
  	unless @user == current_user
      redirect_to user_path(current_user)
    end
  end
  def update
  	@user = User.find(params[:id])
  	@user.update(user_params)
  	redirect_to user_path(@user.id), notice: "You have updated user successfully."
  end
  private
  def user_params
  	params.require(:user).permit(:name, :profile_image, :introduction)
  end
end
