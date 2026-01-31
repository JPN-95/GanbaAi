class ApplicationController < ActionController::Base
  # Requires user login for all actions in this controller
  # before_action :authenticate_user!
  def after_sign_in_path_for(resource)
    dashboard_path
  end
end
