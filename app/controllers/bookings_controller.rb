class BookingsController < ApplicationController

  def dashboard
    booking = Booking.where(id: current_user.id)
  end
end
