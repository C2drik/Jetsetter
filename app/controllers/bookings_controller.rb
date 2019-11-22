class BookingsController < ApplicationController


  def show
    @booking = Booking.find(params[:id])
    @trip = Trip.find(params[:trip_id])
  end


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

  # def edit
  #   @trip = Trip.find(params[:trip_id])
  # end

  def update
    @booking = Booking.find(params[:id])
    @booking.update(review: params[:booking][:review])
    redirect_to dashboard_path
  end
end
