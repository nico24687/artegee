class SessionsController < ApplicationController
  def new
  end

  def create
    
    artist = Artist.find_by(username: params[:username])
    if artist && artist.authenticate(params[:password])
      session[:artist_id] = artist.id
      redirect_to artist_path(artist)
    else
      render :new
    end 
  end

end