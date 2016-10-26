class FitQuizzesController < ApplicationController
  before_action :require_sign_up

  def new
    if current_user.fit_quiz
      redirect_to resources_fitness_path
    else
      @fit_quiz = FitQuiz.new
    end
  end

  def create
    @fit_quiz = FitQuiz.new(fit_quiz_params)
    @fit_quiz.user = current_user
    if @fit_quiz.save
      redirect_to user_path(current_user)
      flash[:notice] = "Your fitness quiz results have been saved."
    else
      render action: 'new'
      flash[:alert] = "There has been an issue saving your results. Please try again."
    end
  end

  def edit
    @fit_quiz = FitQuiz.find(params[:id])
    @fit_quiz.save
  end

  def update
    @fit_quiz = FitQuiz.find(params[:id])
    if @fit_quiz.update_attributes(fit_quiz_params)
      redirect_to user_path(current_user)
      flash[:notice] = "Your fitness quiz results have been saved."
    else
      render action: 'new'
      flash[:alert] = "There has been an issue saving your results. Please try again."
    end
  end
  
  def require_sign_up
    unless current_user
      redirect_to new_user_registration_path
      flash[:alert] = "Sorry, you have to be logged in to do that."
    end
  end

  private
  def fit_quiz_params
    params.require(:fit_quiz).permit(:fit01, :fit02, :fit03, :fit04, :fit05, :fit06, :fit07, :fit08)
  end

end
