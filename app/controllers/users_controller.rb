class UsersController < ApplicationController 
  def new 
    @user = User.new
  end

  def create 
    @user = User.create(user_params)
    session[:user_id] = @user.id
    redirect_to user_onboarding_index_path(@user)
  end

  def show 
    @user = User.find(params[:id])
    @post = Post.new
    location = @user.location
    # @meetups = MeetupPresenter.new(location).meetups
  end

  private 

  def user_params
    params.require(:user).permit(:user_name, :password, :first_name, :last_name, :email, :location, :bio, :avatar, :school)
  end
end