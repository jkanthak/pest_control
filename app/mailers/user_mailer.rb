class UserMailer < ActionMailer::Base
  default from: "johnkanthak@gmail.com"
  
  def welcome_email(user)
    @user = user
    @url  = "https://pestcontrol.herokuapp.com/"
    mail(:to => user.email, :subject => "Welcome to Pest Control")
  end
end
