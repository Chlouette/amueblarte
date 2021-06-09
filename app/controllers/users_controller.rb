class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @bookings = Booking.all
  end
end
