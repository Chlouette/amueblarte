class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
    @orders = Basket.where(user: current_user).where(paid: true)
  end
end
