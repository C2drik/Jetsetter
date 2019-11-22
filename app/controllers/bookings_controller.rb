class BookingsController < ApplicationController

  def show
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.find(params[:id])

    @markers =
    [{
      lat: @booking.start_latitude,
      lng: @booking.start_longitude
    },
    {
      lat: @booking.end_latitude,
      lng: @booking.end_longitude
    }]
  end

  def new
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new
    @markers =
    [{
      lat: @booking.start_latitude,
      lng: @booking.start_longitude
    },
    {
      lat: @booking.end_latitude,
      lng: @booking.end_longitude
    }]
  end

  def create
    @trip = Trip.find(params[:trip_id])
    @booking = Booking.new(status: 'confirmed')
    @booking.user = current_user
    @booking.trip = @trip
    @booking.geocode_endpoints
    if @booking.save!
      redirect_to trip_booking_path(@trip, @booking)
    else
      render "trips/show"
    end
  end

  # def edit
  #   @trip = Trip.find(params[:trip_id])
  # end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(review: params[:booking][:review])
    redirect_to dashboard_path
  end
end
