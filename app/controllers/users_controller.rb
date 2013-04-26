class UsersController < ApplicationController
  
  def show
      @user = User.find(params[:id])
  end
  
  def new
     @user = User.new
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
