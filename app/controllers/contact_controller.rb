class ContactController < ApplicationController
  def new
    @contact = Contact.new
  end

  def index
    @contacts = Contact.all
  end

  def create
    @contact = Contact.new

    @contact.name = params[:contact][:name]
    @contact.email = params[:contact][:email]
    @contact.message = params[:contact][:message]

    if current_user
      @contact.name = current_user.name
      @contact.email = current_user.email
    end

    if @contact.save
      flash[:notice] = "Your message was sent successfully."
      redirect_to welcome_index_path
    else
      flash[:alert] = "Sorry, your message could not be sent."
      redirect_to welcome_index_path
    end
  end
end
