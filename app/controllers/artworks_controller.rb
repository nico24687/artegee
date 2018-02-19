class ArtworksController < ApplicationController
  def new 
    @user = User.find(params[:user_id])
    @artwork = Artwork.new
  end

  def create
    @user = User.find(params[:user_id])
    @artwork = @user.artworks.new(artwork_params)
    if @artwork.save
      flash[:success] = "You created a new artwork"
      redirect_to user_path(@user)
    else
      render :new
    end
  end

  private
    def artwork_params
      params.require(:artwork).permit(:title, :description, :width, :height)
    end


end