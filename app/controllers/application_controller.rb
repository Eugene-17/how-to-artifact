class ApplicationController < ActionController::Base

  protect_from_forgery with: :exception
  before_action :configure_permitted_parameters, if: :devise_controller?


  def resource_name
    :user
  end
  helper_method :resource_name

  def resource
    @resource ||= User.new
  end
  helper_method :resource

  def devise_mapping
    @devise_mapping ||= Devise.mappings[:user]
  end
  helper_method :devise_mapping

  def resource_class
    User
  end
  helper_method :resource_class

  protected
    def configure_permitted_parameters
      devise_parameter_sanitizer.permit(:sign_up) { |u| u.permit(:email, :password) }
      devise_parameter_sanitizer.permit(:account_update) { |u| u.permit(:nickname,:firstname,:lastname, :email, :password, :current_password, :gender,:birthday,:description,:avatar) }
    end

end
