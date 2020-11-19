class BookingsController < ApplicationController
  def index
    @bookings = policy_scope(Booking) # Make sure that .booking is correct/ .bookings?
    @incoming_bookings = []
    @outgoing_bookings = []
    @irrelevant_bookings = []
    @bookings.each do |booking|
      # if your the owner of space that is booked => incoming
      # elsif you book a space that user is not owner of=> outgoing
      # else nevermind
      if booking.space.user == current_user
        @incoming_bookings << booking
      elsif booking.user == current_user
        @outgoing_bookings << booking
      else
        @irrelevant_bookings << booking
      end
    end
  end

  def create
    @booking = Booking.new(bookings_params)
    @space = Space.find(params[:space_id])
    @booking.user = current_user
    @booking.space = @space
    authorize @booking
    if @booking.space.availability_status == true
      @booking.space.availability_status = false
      @booking.space.save!
      if @booking.save!
        redirect_to space_bookings_path(current_user)
      else
        render "space/show"
      end
      # raise
    else
      flash[:notice] = "Space is already occupied"
    end
  end

  def show
    @bookings = policy_scope(Booking)
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
