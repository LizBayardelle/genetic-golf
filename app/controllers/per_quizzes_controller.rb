class PerQuizzesController < ApplicationController
  before_action :require_sign_up

    def show
      @per_quiz = PerQuiz.find(params[:id])
    end

    def new
      if current_user.per_quiz
        redirect_to newsletters_path
      else
        @per_quiz = current_user.build_per_quiz
      end
    end

    def create
      @per_quiz = PerQuiz.new

      @per_quiz.iper_code = params[:per_quiz][:iper_code]
      @per_quiz.myper_code = params[:per_quiz][:myper_code]


      @per_quiz.user = current_user

      if @per_quiz.save
        flash[:notice] = "Your personality saved successfully."
        redirect_to newsletters_path
      else
        flash[:alert] = "Sorry, your results failed to save."
        redirect_to welcome_index_path
      end
    end

    def edit
      @per_quiz = PerQuiz.find(params[:id])
    end

    def update
      @per_quiz = PerQuiz.find(params[:id])

      @per_quiz.assign_attributes(per_quiz_params)

      if @per_quiz.save
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
    def per_quiz_params
      params.require(:per_quiz).permit(:iper_code, :myper_code)
    end
end
