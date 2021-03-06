class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?
  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:image])
    devise_parameter_sanitizer.permit(:sign_up, keys: [:status])
   devise_parameter_sanitizer.permit(:sign_up, keys: [:address])
  end

  def after_sign_out_path_for(resource)
    '/members/sign_in' # サインアウト後のリダイレクト先URL
  end
end
