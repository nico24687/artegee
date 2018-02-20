class WelcomeController < ApplicationController 
  def index 
    @users = User.all
    @artworks = Artwork.all
  end
end