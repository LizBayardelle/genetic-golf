class WelcomeController < ApplicationController
  def index
  end

  def personality
  end

  def game
  end

  def body
    @user = current_user
  end

  def resources
  end

  def about
  end

  def contact
  end

  def admin
    unless current_user && current_user.admin == true
      redirect_to welcome_index_path
      flash[:alert] = "Sorry, you have to be an admin to see that!"
    end
    @users = User.order("last_name DESC")
  end
end
