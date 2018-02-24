class PostsController < ApplicationController

  def new 
    @user = User.find_by(params[:id])
    @post = @user.posts.new
  end
  def create 
    @user = User.find_by(params[:id])
    @post = @user.posts.create(post_params)
    redirect_to user_path(@user)
  end

  private 
    def post_params
      params.require(:post).permit(:body)
    end
end