class UsersController < ApplicationController
  def show
    @user = User.find(params[:id])
    unless current_user && (current_user.admin || @user == current_user)
      redirect_to welcome_index_path
      flash[:alert] = "You do not have access to that page."
    end
  end
end
