class RegistrationsController < Devise::RegistrationsController

  private

  def sign_up_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :gender, :birthday, :dom_hand, :sport, :g_years, :g_rounds, :g_practice, :handicap, :g_score_current, :g_score_start, :admin)
  end

  def account_update_params
    params.require(:user).permit(:first_name, :last_name, :email, :password, :password_confirmation, :current_password, :gender, :birthday, :dom_hand, :sport, :g_years, :g_rounds, :g_practice, :handicap, :g_score_current, :g_score_start, :admin)
  end

  def after_update_path_for(resource)
    user_path(resource)
  end

  def after_sign_up_path_for(resource)
    about_howitworks_path
  end
end
