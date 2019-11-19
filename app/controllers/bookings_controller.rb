class BookingsController < ApplicationController

  def dashboard
    # create dashboard
    booking = Booking.where(id: current_user.id)
  end
end
