class ContactMailer < ApplicationMailer
  default from: "geneticgolf@gmail.com"

  def new_contact(contact)
   @contact = contact
   mail(to: "geneticgolf@gmail.com", subject: "New Contact Us Submission from #{@contact.name}")
  end
end
