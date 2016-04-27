class QuizBsController < ApplicationController
  before_action :require_sign_in

  def show
    @quiz_bs = QuizBs.find(params[:id])
  end

  def new
    @quiz_bs = current_user.quiz_bs || current_user.build_quiz_bs
  end

  def create
    @quiz_bs = QuizBs.new

    @quiz_bs.bs01 = params[:quiz_bs][:bs01]
    @quiz_bs.bs02 = params[:quiz_bs][:bs02]
    @quiz_bs.bs03 = params[:quiz_bs][:bs03]
    @quiz_bs.bs04 = params[:quiz_bs][:bs04]
    @quiz_bs.bs05 = params[:quiz_bs][:bs05]
    @quiz_bs.bs06 = params[:quiz_bs][:bs06]

    @quiz_bs.user = current_user

    if @quiz_bs.save
      flash[:notice] = "Quiz results saved successfully."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Sorry, your quiz results failed to save."
      redirect_to welcome_index_path
    end
  end

  def update
    @quiz_bs = QuizBs.find(params[:quiz_bs])

    @quiz_bs.assign_attributes(quiz_bs_params)

    if @quiz_bs.save
      flash[:notice] = "Post was updated successfully."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "There was an error saving the post. Please try again."
      redirect_to welcome_index_path
    end
  end

  private
  def quiz_bs_params
    params.require(:quiz_bs).permit(:bs01, :bs02, :bs03, :bs04, :bs05, :bs06)
  end

end
