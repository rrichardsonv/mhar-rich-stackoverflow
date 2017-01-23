class UsersController < ApplicationController
  helper SessionsHelper
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_deets)
    if @user.save
      redirect_to(root_path)
    else
      @errors = @user.errors.full_messages
      render action: 'new'
    end
  end

  def show
  end

  def edit
  end

  def update
  end

private
  def user_deets
      params.require(:user).permit(:username, :password)
  end
end
