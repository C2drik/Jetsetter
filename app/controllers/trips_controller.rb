class TripsController < ApplicationController
before_action :set_trip, only: [:show, :edit, :update]

  def index
    @trip = Trip.all
  end

  def show
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip.save
  end

  def edit
  end

  def update
    @trip.update(params[:trip])
  end

  def destroy
  end

  def set_trip
    @trip = Trip.find(params[:id])
  end
end
