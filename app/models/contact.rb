class Contact < ActiveRecord::Base
 after_create :send_contact_emails

private

 def send_contact_emails
    ContactMailer.new_contact(self).deliver_now
 end
end
