class UsersController < ApplicationController
  
  def show
    @user  = User.find(params[:id])
    @title = @user.name 
  end
  def new
    @title = "Sign up"
    @user = User.new
  end
  
  def create
    #raise params[:user].inspect
    @user = User.new(params[:user])
    if @user.save
      flash[:success] = "Welcome to the  Sample App!"
<<<<<<< HEAD
     # redirect_to user_path(@user)
      redirect_to @user
=======
      redirect_to user_path(@user)
>>>>>>> 1599c9c9235458e73719ad1d41c0dfac0259bb52
    else
      
      @title = "Sign up"
      render 'new'
    end
  end

end
