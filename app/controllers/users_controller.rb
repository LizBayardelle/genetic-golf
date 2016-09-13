class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    @full_swing = ClubFitting.where(user: current_user, club_type: "Full Swing").last
    @wedge = ClubFitting.where(user: current_user, club_type: "Wedge").last
    @putter = ClubFitting.where(user: current_user, club_type: "Putter").last
    unless current_user && (current_user.admin || @user == current_user)
      redirect_to welcome_index_path
      flash[:alert] = "You do not have access to that page."
    end
  end
end
