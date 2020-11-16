class WindowsController < ApplicationController

  before_action :find_window, only: [:show, :update, :edit, :destroy]

  def index 
    @windows = Window.all 
  end

  def show 
  end 

  def new 
    @window = Window.new 
  end 

  def create 
    @window = Window.new(window_params)
    if @window.save 
      redirect_to @window 
    else 
      render :new 
    end
  end 

  def edit 
  end

  def update 
    @window.update(window_params)
    redirect_to window_path(@window)
  end 

  def 
    @window.destroy 
  end

  private 
  
  def find_window 
    @window = Window.find(params[:id])
  end

  def window_params 
    #ToDo, identify params to be passed into the window_params
  end
end
