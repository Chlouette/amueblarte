class FavoritesController < ApplicationController
  def index
    @favorite_items = current_user.favorited_by_type('Item')
    @favorite_artists = current_user.favorited_by_type('Artist')
  end
end
