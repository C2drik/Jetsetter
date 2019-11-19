class BookingsController < ApplicationController

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    @booking.user = current_user
    @booking.trip = @trip
    if @booking.save
      redirect_to trip_path(@trip)
    else
      render "trips/show"
    end
  end

end
