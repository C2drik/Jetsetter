class DashboardController < ApplicationController

  def show
    @bookings = current_user.bookings
    @trips = current_user.trips
    # @reviews = current_user.trips.map { |trip| trip.bookings }.flatten
    @reviews = Booking.joins(:trip).where(trip: current_user.trips)
  end
end
