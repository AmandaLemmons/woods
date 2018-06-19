class ContactNotifierMailer < ApplicationMailer
  default :from => 'amanda.lemmons@gmail.com'

   # send a signup email to the user, pass in the user object that   contains the user's email address
   def send_signup_email(email, name, text)
     @email = send_signup_email
     @name = name
     @text = text
     mail( :to => '"#{@email}"',
     :subject => 'New Contact',
    :body => '"#{@name}" with email address "#{@email}" got in contact with the following message: "#{@text}"')
   end
 end
