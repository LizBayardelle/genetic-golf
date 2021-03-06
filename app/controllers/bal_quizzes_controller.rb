class BalQuizzesController < ApplicationController
  before_action :require_sign_up

  def show
    @bal_quiz = BalQuiz.find(params[:id])
  end

  def new
    if current_user.bal_quiz
      redirect_to edit_bal_quiz_path(current_user.bal_quiz)
    else
      @bal_quiz = current_user.build_bal_quiz
    end
  end

  def create
    @bal_quiz = BalQuiz.new

    @bal_quiz.bal01 = params[:bal_quiz][:bal01]
    @bal_quiz.bal02 = params[:bal_quiz][:bal02]
    @bal_quiz.bal03 = params[:bal_quiz][:bal03]
    @bal_quiz.bal04 = params[:bal_quiz][:bal04]
    @bal_quiz.bal05 = params[:bal_quiz][:bal05]
    @bal_quiz.bal06 = params[:bal_quiz][:bal06]

    @bal_quiz.user = current_user

    if @bal_quiz.save
      flash[:notice] = "Quiz results saved successfully."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Sorry, your quiz results failed to save."
      redirect_to welcome_index_path
    end
  end

  def edit
    @bal_quiz = BalQuiz.find(params[:id])
  end

  def update
    @bal_quiz = BalQuiz.find(params[:id])

    @bal_quiz.assign_attributes(bal_quiz_params)

    if @bal_quiz.save
      flash[:notice] = "Results were updated successfully."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "There was an error saving your results. Please try again."
      redirect_to welcome_index_path
    end
  end

  def require_sign_up
    unless current_user
      redirect_to new_user_registration_path
      flash[:alert] = "Sorry, you have to be logged in to do that."
    end
  end

  private
  def bal_quiz_params
    params.require(:bal_quiz).permit(:bal01, :bal02, :bal03, :bal04, :bal05, :bal06)
  end

end
