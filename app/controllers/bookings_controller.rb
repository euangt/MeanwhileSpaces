class BookingsController < ApplicationController
  def index
    @my_bookings = policy_scope(Booking) # Make sure that .booking is correct/ .bookings?
    @my_space_bookings = Booking.all.map do |booking|
      if booking.space.user == current_user
      end
    end
      # if your the owner of space that is booked => incoming
      # elsif you book a space that user is not owner of=> outgoing
      # else nevermind
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
        redirect_to space_bookings_path(@space)
      else
        render "space/show"
      end
    else
      flash[:notice] = "Space is already occupied"
      redirect_to space_path(@space, anchor: "card-book-form")
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
