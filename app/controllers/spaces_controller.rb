class SpacesController < ApplicationController

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
        #@space.user = 
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
    
      def 
        @space.destroy 
      end
    
      private 
    
      def find_space 
        @space = Space.find(params[:id])
      end
    
      def space_params 
        params.require(:space).permit(:title, :address, :price_per_day)
      end
end
