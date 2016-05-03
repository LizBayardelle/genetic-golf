class SwingBooksController < ApplicationController
  before_action :require_sign_in

    def show
      @swing_book = SwingBook.find(params[:id])
    end

    def new
      @swing_book = current_user.build_swing_book
    end

    def create
      @swing_book = SwingBook.new

      @swing_book.swing_code = params[:swing_book][:swing01]
      @swing_book.swing_code = params[:swing_book][:swing02]
      @swing_book.swing_code = params[:swing_book][:swing03]
      @swing_book.swing_code = params[:swing_book][:swing04]
      @swing_book.swing_code = params[:swing_book][:swing05]
      @swing_book.swing_code = params[:swing_book][:swing06]
      @swing_book.swing_code = params[:swing_book][:swing07]
      @swing_book.swing_code = params[:swing_book][:swing08]
      @swing_book.swing_code = params[:swing_book][:swing09]
      @swing_book.swing_code = params[:swing_book][:swing10]
      @swing_book.swing_code = params[:swing_book][:swing_code]

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
