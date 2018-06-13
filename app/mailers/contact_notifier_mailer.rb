class ContactNotifierMailer < ApplicationMailer
  default :from => 'any_from_address@example.com'

   # send a signup email to the user, pass in the user object that   contains the user's email address
   def send_signup_email(email, name, text)
     @email = send_signup_email
     @name = name
     @text = text
     mail( :to => 'amanda.lemmons@gmail.com',
     :subject => 'New Contact',
    :body => '"#{@name}" with email address "#{@email}" got in contact with the following message: "#{@text}"')
   end
 end
