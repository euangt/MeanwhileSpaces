class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking) # Make sure that .booking is correct/ .bookings?
  end

  def create
    @booking = Booking.new(bookings_params)
    @booking.user = current_user
    @booking.space = Space.find(params[:space_id])
    authorize @booking
    if @booking.save
      redirect_to space_bookings_path
    else
      render "space/show"
    end
  end

  # def destroy
  #   @booking = Booking.find(params[:id])
  #   @booking.destroy
  # end

  private

  def bookings_params
    params.require(:booking).permit(:start_date, :end_date, :space_id)
  end
end
