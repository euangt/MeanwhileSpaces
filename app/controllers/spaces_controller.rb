class SpacesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_space, only: [:show, :update, :edit, :destroy]

  def index
    @spaces = policy_scope(Space)
      if params[:query].present?
        @spaces = Space.near(params[:query], 50)
      else
      @spaces = Space.all
      end

      # if params[:query]
      # then @spaces = Space.near(params[:query], 50)

    @markers = @spaces.geocoded.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
    end
  end

  def show
    authorize @space
    @user = current_user
    @booking = Booking.new
    @spaces = []
    @spaces << @space
    @markers = @spaces.map do |space|
      {
        lat: space.latitude,
        lng: space.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { space: space })
      }
    end
  end

  def new
    @space = Space.new
    authorize @space
  end

  def create
    @space = Space.new(space_params)
    @space.user = current_user
    authorize @space
    if @space.save!
      redirect_to space_path(@space)
    else
      render :new
    end
  end

  def edit
    authorize @space
  end

  def update
    authorize @space
    @space.update(space_params)
    redirect_to space_path(@space)
  end

  def destroy
    authorize @space
    @space.destroy
    redirect_to spaces_path
  end

  private

  def find_space
    @space = Space.find(params[:id])
  end

  def space_params
    params.require(:space).permit(:space_id, :title, :address, :price_per_day, :heating, :internet, :lighting, :floor_space, :user_id, :photo)
  end
end

