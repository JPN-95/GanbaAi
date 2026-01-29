class UsersController < ApplicationController
  def show
    # @user = User.find(params[:id])]
    # @user = User.find(current_user)
  end
  def dashboard
    @user_id = current_user.id
    @test = Test.find(params[:user_id])
  end

  def progress
    @test = Test.find(params[:user_id])

  end


  def set_time_zone
    Time.zone = current_user.time_zone
  end

  private
  def params_test
    require(:user).permit(:user_id)
  end
end
