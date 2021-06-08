class FavoriteArtistsController < ApplicationController
  def create
  @favorite_artist = FavouriteArtist.new(params[:artist_id])
  @favorite_artist.user = current_user
    if @favorite_artist.save
      redirect to favorites_path
    else
      render :new
    end
  end
end
