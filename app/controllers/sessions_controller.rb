class SessionsController < ApplicationController
  include SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.find_by(username: user_deets[:username])
    if @user.authenticate(user_deets[:password])
      login_user

      redirect_to root_path
    else
      @errors = ["That combination of username and password can't be found"]
      render :action => 'new'
    end
  end

  def destroy
    logout_user
    redirect_to root_path
  end

private
  def user_deets
      params.require(:user).permit(:username, :password)
  end
end
