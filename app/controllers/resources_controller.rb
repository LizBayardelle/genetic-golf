class ResourcesController < ApplicationController
  def aids
  end

  def fitness
    @user = current_user
  end
end
