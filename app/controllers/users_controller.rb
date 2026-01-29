class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
  end
  def dashboard

  end

  def set_time_zone
    Time.zone = current_user.time_zone
  end
end
