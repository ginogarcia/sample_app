class UsersController < ApplicationController
  def new
    @title = "Sign up"
    @user = User.new
  end
 def show
   @user =User.all
   
  end
end
