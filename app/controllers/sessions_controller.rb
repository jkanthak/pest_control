class SessionsController < ApplicationController
   
   def new      
      flash[:welcome] = "Welcome to Pest Control! Visit the 'About' page 
                        for an intro to the app. 
                         Guests may log in using: 'guest@guest.com' and 'password'"
   end
   
   def create
      user = User.find_by_email(params[:session][:email])
      if user && user.authenticate(params[:session][:password])
         sign_in user
         redirect_to root_path
      else
         flash.now[:error] = 'Invalid email/password combination'
         render 'new'
      end
   end
     
   def destroy
      sign_out
      redirect_to signin_path
   end
   
end
