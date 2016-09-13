class FittingController < ApplicationController
  def full
    @club_fitting = ClubFitting.new
  end

  def wedge
    @club_fitting = ClubFitting.new
  end

  def putter
    @club_fitting = ClubFitting.new
  end
end
