class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  before_action :configure_permitted_parameters, if: :devise_controller?
  protect_from_forgery with: :exception


  

  protected

    def after_sign_in_path_for(user)
      activate_path
    end

    def configure_permitted_parameters
      devise_parameter_sanitizer.for(:sign_up) << :name << :department << :born_on << :level
    end
end
