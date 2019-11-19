class DashboardController < ApplicationController

  def dashboard
    @bookings = current_user.bookings
  end

  def current_user
  end


end
