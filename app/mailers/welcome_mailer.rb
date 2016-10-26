class WelcomeMailer < ApplicationMailer
	default from: "admin@geneticgolf.com"

   def new_signup(user)
 
     @user = user
 
     mail(to: user.email, subject: "Welcome to Genetic Golf!")
   end
end
