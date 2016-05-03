class BodQuizzesController < ApplicationController
  before_action :require_sign_in

  def show
    @bod_quiz = BodQuiz.find(params[:id])
  end

  def new
    @bod_quiz = current_user.build_bod_quiz
  end

  def create
    @bod_quiz = BodQuiz.new

    @bod_quiz.bod_type = params[:bod_quiz][:bod_type]
    @bod_quiz.height = params[:bod_quiz][:height]
    @bod_quiz.weight = params[:bod_quiz][:weight]
    @bod_quiz.age = params[:bod_quiz][:age]
    @bod_quiz.wrist_floor = params[:bod_quiz][:wrist_floor]
    @bod_quiz.hand_length = params[:bod_quiz][:hand_length]
    @bod_quiz.longest_finger = params[:bod_quiz][:longest_finger]

    @bod_quiz.user = current_user

    if @bod_quiz.save
      flash[:notice] = "Quiz results saved successfully."
      redirect_to user_path(current_user)
    else
      flash[:alert] = "Sorry, your quiz results failed to save."
      redirect_to welcome_index_path
    end
  end

  def edit
    @bod_quiz = BodQuiz.find(params[:id])
  end

  def update
    @bod_quiz = BodQuiz.find(params[:id])

    @bod_quiz.assign_attributes(bod_quiz_params)

    if @bod_quiz.save
      flash[:notice] = "Results were updated successfully."
      redirect_to user_path(current_user)
    else
      flash.now[:alert] = "There was an error saving your results. Please try again."
      redirect_to welcome_index_path
    end
  end

  private
  def bod_quiz_params
    params.require(:bod_quiz).permit(:gender, :bod_type, :height, :weight, :age, :wrist_floor, :hand_length, :longest_finger)
  end
end
