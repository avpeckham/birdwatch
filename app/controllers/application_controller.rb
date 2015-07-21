class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  # code to allow users to change params using devise


  before_filter :configure_permitted_params, if: :devise_controller?

# method that allows users to change params using devise
	def configure_permitted_params
	devise_parameter_sanitizer.for(:sign_up) { |u| u.permit(:email, :user_name, :bio, :password, :password_confirmation) }
	devise_parameter_sanitizer.for(:account_update) { |u| u.permit(:email, :user_name, :bio, :password, :password_confirmation, :current_password, :encrypted_password) }
	end


end
