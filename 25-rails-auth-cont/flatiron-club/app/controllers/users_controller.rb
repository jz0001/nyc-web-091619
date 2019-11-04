class UsersController < ApplicationController
  before_action :authorized, only: [:show]
  
  def new
    @user = User.new
  end

  def create
    @user = User.new(user_params)
    
    if @user.save
      flash[:notice] = "User successfully created!!!"
      redirect_to login_path
    else
      flash[:errors] = @user.errors.full_messages
      redirect_to signup_path
    end
  end

  def show 
    @user = User.find(params[:id])
  end

  private

  def user_params
    params.require(:user).permit(:username, :password, :password_confirmation)
  end
end
