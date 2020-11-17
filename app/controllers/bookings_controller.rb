class BookingsController < ApplicationController
  def index
    @bookings = current_user.booking
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.space = Space.find(params[:space_id])
    if @booking.save
      redirect_to booking_path(@booking)
    else
      render :new
    end
  end

  def destroy
    @booking = Booking.find(params[:id])
    @booking.destroy
  end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date)
  end
end
