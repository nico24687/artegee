class UsersController < ApplicationController 
  def new 
    @user = User.new
  end

  def create 
    @user = User.create(user_params)
    redirect_to user_onboarding_index_path(@user)
  end

  def show 
    @user = User.find(params[:id])
  end

  private 

  def user_params
    params.require(:user).permit(:user_name, :password, :first_name, :last_name, :email, :location, :bio, :avatar, :school)
  end
end