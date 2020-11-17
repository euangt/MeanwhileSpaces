class UsersController < ApplicationController
  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])

    if @user.update(@user.save)
      redirect_to @user
    else
      render :edit
    end
  end
  private
    def user_params
      params.require(:user).permit(:first_name, :last_name, :phone_number)
    end
end
