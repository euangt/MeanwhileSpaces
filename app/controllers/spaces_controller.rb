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
      end

      private

      def find_space
        @space = Space.find(params[:id])
      end

      def space_params
        #ToDo, identify params to be passed into the space_params - just: name - current_user can be used for
      end
end
