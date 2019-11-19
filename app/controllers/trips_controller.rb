class TripsController < ApplicationController
before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trips = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip.save
    redirect_to trip_path(@trip)
  end

  def edit
  end

  def update
    if @trip.update(params[:trip])
      redirect_to trip_path(@trip)
    else
      render :edit
    end
  end

  def destroy
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
