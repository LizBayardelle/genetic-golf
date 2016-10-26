class FlexQuizzesController < ApplicationController

    before_action :require_sign_up

      def show
        @flex_quiz = FlexQuiz.find(params[:id])
      end

      def new
        if current_user.flex_quiz
          redirect_to edit_flex_quiz_path(current_user.flex_quiz)
        else
          @flex_quiz = current_user.build_flex_quiz
        end
      end

      def create
        @flex_quiz = FlexQuiz.new

        @flex_quiz.flex01 = params[:flex_quiz][:flex01]
        @flex_quiz.flex02 = params[:flex_quiz][:flex02]
        @flex_quiz.flex03 = params[:flex_quiz][:flex03]
        @flex_quiz.flex04 = params[:flex_quiz][:flex04]
        @flex_quiz.flex05 = params[:flex_quiz][:flex05]
        @flex_quiz.flex06 = params[:flex_quiz][:flex06]
        @flex_quiz.flex07 = params[:flex_quiz][:flex07]
        @flex_quiz.flex08 = params[:flex_quiz][:flex08]
        @flex_quiz.flex09 = params[:flex_quiz][:flex09]
        @flex_quiz.flex10 = params[:flex_quiz][:flex10]

        @flex_quiz.user = current_user

        if @flex_quiz.save
          flash[:notice] = "Quiz results saved successfully."
          redirect_to user_path(current_user)
        else
          flash[:alert] = "Sorry, your quiz results failed to save."
          redirect_to welcome_index_path
        end
      end

      def edit
        @flex_quiz = FlexQuiz.find(params[:id])
      end

      def update
        @flex_quiz = FlexQuiz.find(params[:id])

        @flex_quiz.assign_attributes(flex_quiz_params)

        if @flex_quiz.save
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
      def flex_quiz_params
        params.require(:flex_quiz).permit(:flex01, :flex02, :flex03, :flex04, :flex05, :flex06, :flex07, :flex08, :flex09, :flex10)
      end
end
