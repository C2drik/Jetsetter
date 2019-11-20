class DashboardController < ApplicationController

  def dashboard
    @bookings = current_user.bookings
    @trips = current_user.trips
  end

end
