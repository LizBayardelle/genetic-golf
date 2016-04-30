class UsersController < ApplicationController
  def new
    @user = User.new
  end

  def create
    @user = User.new
    @user.name = params[:user][:name]
    @user.email = params[:user][:email]
    @user.password = params[:user][:password]
    @user.password_confirmation = params[:user][:password_confirmation]

    if @user.save
      flash[:notice] = "Welcome to Genetic Golf #{@user.name}!"
      create_session(@user)
      redirect_to root_path
    else
      flash.now[:alert] = "There was an error creating your account. Please try again."
      render :new
    end
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @user.email = params[:user][:email]
    @user.gender = params[:user][:gender]
    @user.birthday = params[:user][:birthday]
    @user.dom_hand = params[:user][:dom_hand]
    @user.sport = params[:user][:sport]
    @user.g_years = params[:user][:g_years]
    @user.g_rounds = params[:user][:g_rounds]
    @user.g_practice = params[:user][:g_practice]
    @user.handicap = params[:user][:handicap]

    if @user.save
      flash[:notice] = "Your information was successfully updated."
      redirect_to @user
    else
      flash.now[:alert] = "There was an error saving your information. Please try again."
      render :edit
    end
  end

  def show
    @user = User.find(params[:id])
  end
end
