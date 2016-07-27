class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :gender, :birthday, :dom_hand, :sport, :g_years, :g_rounds, :g_practice, :handicap, :g_score, :admin)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :gender, :birthday, :dom_hand, :sport, :g_years, :g_rounds, :g_practice, :handicap, :g_score, :admin)
  end
end
