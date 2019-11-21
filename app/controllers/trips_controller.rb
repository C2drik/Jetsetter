class TripsController < ApplicationController
  before_action :set_trip, only: [:show, :edit, :update, :photo]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = current_user
    if @trip.save
      redirect_to trips_path
    else
      render :new
    end
  end

  def edit
  end

  def update
    @trip.update(trip_params)
    redirect_to trip_path(@trip)
  end

  def destroy
  end

  private

  def set_trip
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:city, :start_date, :end_date, :start_city, :end_city, :jet_id, :price, :jet_name, :jet_model, :jet_seats, :jet_description, :photo)
  end
end
