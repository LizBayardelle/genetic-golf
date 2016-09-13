class ClubFittingsController < ApplicationController
  def create
    @user = current_user
    @club_fitting = ClubFitting.new(club_fitting_params)
    @club_fitting.user = current_user
    if @club_fitting.save
      redirect_to user_path(@user)
    else
      redirect_to :back
      flash[:alert] = "Your club recommendations could not be saved. Please try again later."
    end
  end

  def update
    @user = current_user
    @club_fitting = ClubFitting.find(params[:id])
    if @club_fitting.update_attributes(club_fitting_params)
      redirect_to user_path(@user)
    else
      redirect_to :back
      flash[:alert] = "Your club recommendations could not be saved. Please try again later."
    end
  end

  private
  def club_fitting_params
    params.require(:club_fitting).permit(:club_type, :model, :loft, :hosel_position, :shaft, :flex, :length, :grip, :grip_color_code, :color_code, :series, :user)
  end
end
