class UsersController < ApplicationController
   
  def index
     @users = User.all     
  end
  
  def show
     @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
  end

  def edit
     @user = User.find(params[:id])     
  end
  
  def update
      if @user.update_attributes(params[:user])
         flash[:success] = "Profile updated."
         sign_in @user
         redirect_to @user
      else
         render 'edit'
      end   
  end
  
  def create
     @user = User.new(params[:user])
     if @user.save
        sign_in @user
        flash[:success] = "Account created. Welcome to Pest Control!"
        redirect_to root_path
     else
        render 'new'
     end
  end
   

end
