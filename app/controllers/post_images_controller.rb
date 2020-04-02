class PostImagesController < ApplicationController
	def new
		@post_image = PostImage.new
	end
	def create
		@post_image = PostImage.new(post_image_params)
		@post_image.user_id = current_user.user_id
		@post_image.save
		redirect_to post_image_path
	end
	def index
		@post_image = PostImage.find(params[:id])
		@post_images = PostImage.all
	end
	def show
		@post_image = PostImage.find(params[:id])
	end

	private
	def post_image_params
		params.require(:post_image).permit(:name, :profile_image, :introduction)
	end
end
