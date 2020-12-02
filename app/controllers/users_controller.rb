class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(
    uname: params[:user][:uname], 
    password: params[:user][:password], 
    password_confirmation: params[:user][:password_confirmation])
    
    if @user.save
      redirect_to root_path
    else
      #@user.pass = ""
      logger.debug("あああ")
      render :new
    end
  end

  def edit
  end
end
