class WindowsController < ApplicationController

  def index 
    @windows = Window.all 
  end

  def show 
    @window = Window.find(params[:id])
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

  private 

  def window_params 
    #ToDo, identify params to be passed into the window_params
  end
end
