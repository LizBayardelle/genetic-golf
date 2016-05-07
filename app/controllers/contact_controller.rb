class ContactController < ApplicationController
  def send_mail
    name = params[:name]
    email = params[:email]
    body = params[:comments]
    ContactMailer.contact_email(name, email, body).deliver
    redirect_to welcome_contact_path, notice: 'Message sent'
  end
end