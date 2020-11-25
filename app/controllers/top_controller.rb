class TopController < ApplicationController
  def index
    @users = User.all
    @stores = Store.all
  end

  def login
  end
end
