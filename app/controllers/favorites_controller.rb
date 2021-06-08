class FavoritesController < ApplicationController
  def index
    @favorite_items = FavouriteItem.where(user_id: current_user)
    @favorite_artists = FavouriteArtist.where(user_id: current_user)
  end
end
