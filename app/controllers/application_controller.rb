class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  include SessionsHelper

  private

  def require_sign_in
    unless current_user
      flash[:alert] = "Sorry, you have to be logged in to do that."
      redirect_to new_user_session_path
    end
  end
end
