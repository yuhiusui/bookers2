class ApplicationController < ActionController::Base
	before_action :configure_permitted_parameters, if: :devise_controller?
	# before_action :correct_user, only: [:edit, :update]


	def after_sign_up_path_for(resource)
	  user_path(resource)
	end
	def after_sign_in_path_for(resource)
	  user_path(resource)
	end

  protected
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name, :email, :password, :password_confirmation])
    devise_parameter_sanitizer.permit(:sign_in, keys: [:name, :password])
  end
#   def authenticate_user
# 　　if @current_user == nil
# 　　　redirect_to("/login")
# 　　end
# 　end
# 　def correct_user
#     @user_id = User.find(params[:id])
#       if @user_id != current_user
#        redirect_to user_path(current_user)
#      end
#   end
end
