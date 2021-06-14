class ArtistsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :find_by_id, only: [:show, :toggle_favorite]

  def index
    @artists = Artist.all
    session[:booking_type] = ""
  end

  def show; end

  def toggle_favorite
    if current_user.favorited?(@artist)
      current_user.unfavorite(@artist)
    else
      current_user.favorite(@artist)
    end
  end

  private

  def find_by_id
    @artist = Artist.find(params[:id])
  end
end
