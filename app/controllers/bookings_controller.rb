class BookingsController < ApplicationController
  def show
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
    @booking.destroy
  end

  private

  def bookings_params
    params.require(:booking).permit(:user_id, :space_id, :start_date, :end_date)
  end
end
