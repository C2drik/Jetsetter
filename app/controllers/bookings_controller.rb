class BookingsController < ApplicationController

  def index
    @booking = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(params[:booking])
    @booking.save
  end

  def edit
    @booking = Booking.find(params[:id])
  end

  def update
    if @booking.update(params[:id])
      render :show
    else
      render :new
    end
  end

  private

  def booking_params
    params.require(:booking).permit(:status)
  end

end
