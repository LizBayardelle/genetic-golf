class NewslettersController < ApplicationController
  def new
    @newsletter = Newsletter.new
  end

  def create
    @newsletter = Newsletter.new(newsletter_params)
    if @newsletter.save
      redirect_to newsletters_path
      flash[:notice] = "Your newsletter has been successfully created."
    else
      render action: 'new'
    end
  end

  def edit
    @newsletter = Newsletter.find(params[:id])
  end

  def update
    @newsletter = Newsletter.find(params[:id])
    if @newsletter.update_attributes(newsletter_params)
      redirect_to newsletters_path
      flash[:notice] = "That newsletter has been updated."
    else
      render action: :edit
    end
  end

  def show
    @most_recent_newsletter = Newsletter.limit(1)
    @newsletter = Newsletter.find(params[:id])
  end

  def index
    @newsletters = Newsletter.all
  end

  def destroy
    @newsletter = Newsletter.find(params[:id])
    @newsletter.destroy
    redirect_to newsletters_path
    flash[:notice] = "That newsletter has been deleted."
  end

  private
  def newsletter_params
    params.require(:newsletter).permit(:user, :title, :body, :newsletter_type, :week)
  end
end
