class DashboardController < ApplicationController

  def show
    @bookings = current_user.bookings
    @trips = current_user.trips
    @user = current_user
  end
end
