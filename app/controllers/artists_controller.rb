class ArtistsController < ApplicationController
  def index
    @artists = Artist.all
    session[:booking_type] = ""
  end

  def show
    @artist = Artist.find(params[:id])
  end
end
