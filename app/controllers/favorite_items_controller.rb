class FavoriteItemsController < ApplicationController
  def create
    @favorite_item = FavouriteItem.new(params[:item_id])
    @favorite_item.user = current_user
    if @favorite_item.save
      redirect to user_path(current_user)
    else
      render :new
    end
  end
end
