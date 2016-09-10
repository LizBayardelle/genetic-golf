class SwingBooksController < ApplicationController
  before_action :require_sign_in

    def show
      @swing_book = SwingBook.find(params[:id])
    end

    def new
      if current_user.swing_book
        redirect_to edit_swing_book_path(current_user.swing_book)
      else
        @swing_book = current_user.build_swing_book
      end
    end

    def create
      @swing_book = SwingBook.new

      @swing_book.assign_attributes(swing_book_params)
      @swing_book.user = current_user

      if @swing_book.save
        flash[:notice] = "Your swing code was saved successfully."
        redirect_to user_path(current_user)
      else
        flash[:alert] = "Sorry, your results failed to save."
        redirect_to welcome_index_path
      end
    end

    def edit
      @swing_book = SwingBook.find(params[:id])
    end

    def update
      @swing_book = SwingBook.find(params[:id])

      @swing_book.assign_attributes(swing_book_params)

      if @swing_book.save
        flash[:notice] = "Results were updated successfully."
        redirect_to user_path(current_user)
      else
        flash.now[:alert] = "There was an error saving your results. Please try again."
        redirect_to welcome_index_path
      end
    end

    private
    def swing_book_params
      params.require(:swing_book).permit(:swing01, :swing02, :swing03, :swing04, :swing05, :swing06, :swing07, :swing08, :swing09, :swing10, :swing_code)
    end
end
