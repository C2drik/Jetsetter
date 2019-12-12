class DashboardsController < ApplicationController

  def show
    @bookings = current_user.bookings
    if params[:status].present?
      @bookings = @bookings.where(status: params[:status])
    end
  end
end
