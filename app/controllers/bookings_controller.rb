class BookingsController < ApplicationController

  def dashboard
    # create dashboard
    booking = Booking.where(id: current_user.id)
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create

  end
end
