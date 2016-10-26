class AboutController < ApplicationController
  def benefits
  end

  def principles
  end

  def staff
  end

  def contact
  end

  def howitworks
    @user = current_user
  end
end
