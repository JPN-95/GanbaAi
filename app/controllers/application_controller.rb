class ApplicationController < ActionController::Base
  # Requires user login for all actions in this controller
  # before_action :authenticate_user!

  before_action :configure_permitted_parameters, if: :devise_controller?
  protected

  def configure_permitted_parameters
    # Allow username during sign up
    devise_parameter_sanitizer.permit(:sign_up, keys: [:username])

    # Allow username during account update
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  #redirecting user to dashboard after login
  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
