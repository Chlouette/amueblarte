class ItemsController < ApplicationController
  before_action :authenticate_user!, only: :toggle_favorite
  before_action :find_by_id, only: [:show, :edit, :update, :toggle_favorite]

  def index_creation
    if params[:item] == "Select Category"
      @items = Item.where(status: "collected")
      redirect_to items_create_path
    elsif params[:item]
      @items = Item.where(category: params[:item], status: "collected")
      @filter = params[:item].to_s
    else
      @items = Item.where(status: "collected")
    end
      session[:booking_type] = "creation"
  end

  def index_decoration
    # @items = Item.where(status: "for sale")
    if params[:item] == "Select Category"
      @items = Item.where(status: "for sale")
      redirect_to items_decorate_path
    elsif params[:item]
      @items = Item.where(category: params[:item], status: "for sale")
      @filter = params[:item].to_s
    else
      @items = Item.where(status: "for sale")
    end
    session[:booking_type] = "decoration"
  end

  def show
    # TO DO
    # @artist = User.where(User.booking.item: @item)
    booking = @item.bookings.first
    @basket = current_user.baskets.last
    # @artist = booking.user
    @artist = Artist.first
  end

  def new
    @item = Item.new
    session[:booking_type] = "donation"
  end

  def create
    @item = Item.new(item_params)
    @item.user = current_user
    if @item.save
      redirect_to new_item_booking_path(@item)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @item.save
      redirect_to item_path
    else
      render :edit
    end
  end

  def toggle_favorite
    if current_user.favorited?(@item)
      current_user.unfavorite(@item)
    else
      current_user.favorite(@item)
    end
  end

  private

  def find_by_id
    @item = Item.find(params[:id])
  end

  def item_params
    params.require(:item).permit(:name, :description, :category, :status, photos: [])
  end
end
