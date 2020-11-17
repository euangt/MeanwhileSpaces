class SpacesController < ApplicationController

  skip_before_action :authenticate_user!, only: [:show, :index]
  before_action :find_space, only: [:show, :update, :edit, :destroy]

  def index 
        @spaces = Space.all 
      end
    
      def show 
      end 
    
      def new 
        @space = Space.new
      end 
    
      def create 
        @space = Space.new(space_params)
        @space.user = current_user
        if @space.save 
          redirect_to space_path(@space)
        else 
          render :new 
        end
      end 
    
      def edit 
      end
    
      def update 
        @space.update(space_params)
        redirect_to space_path(@space)
      end 
    
      def destroy
        @space.destroy 
        redirect_to spaces_path
      end
    
      private 
    
      def find_space 
        @space = Space.find(params[:id])
      end
    
      def space_params 
        params.require(:space).permit(:space_id, :title, :address, :price_per_day, :heating, :internet, :lighting, :floor_space)
      end
end
