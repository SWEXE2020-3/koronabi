class UsersController < ApplicationController
  def new
    @user = User.new
  end
  
  def create
    @user = User.new(uname: params[:uname], pass: params[:pass])
    if @user.save
    end
  end

  def edit
  end
end
