class FavoritesController < ApplicationController
  def index
    @favorite_items = FavoriteItem.where(user_id: current_user)
    @favorite_artists = FavoriteArtist.where(user_id: current_user)
  end
end
