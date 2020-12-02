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
    @user = User.find(params[:id])
  end
  
  def update
    @user = User.find(params[:id])
    if @user.update(uid: params[:user][:uname])
      #flash[:notice] = '内容が編集されました'
      redirect_to root_path
    else
      render :edit
    end
  end
  
  def destroy
    user = User.find(params[:id])
    user.destroy
    redirect_to root_path
  end
end
