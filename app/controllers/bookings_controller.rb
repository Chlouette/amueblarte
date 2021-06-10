class BookingsController < ApplicationController
  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
    @item = Item.find(params[:item_id])
  end

  def create
    @booking = Booking.new(booking_params)
    @item = Item.find(params[:item_id])
    @booking.item_id = @item.id
    # @booking.item = @item --> shortcut for line above
    @booking.booking_type = session[:booking_type]
    @booking.user = current_user
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
