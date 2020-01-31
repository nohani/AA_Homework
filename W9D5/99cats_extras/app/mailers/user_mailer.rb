class UserMailer < ApplicationMailer
   default from: 'jbiakcin@icloud.com'
   
  def welcome_email(user)
    @user = user 
    @url = "localhost:3000/users"
    mail(to: 'nsevoulig25@aol.com', subject: "Welcome to 99 cats!")
  end
end
