class TopController < ApplicationController
  def index
    @users = User.all
    @stores = Store.all
    @evals = Eval.limit(3)
  end
  
  def login_form
    render :login
  end

  def login
    if User.authenticate(params[:uname], params[:pass])
      session[:login_uname] = params[:uname]
      redirect_to root_path
    else
      render :login
    end
  end
  
  def logout
    session.delete(:login_uname)
    redirect_to root_path
  end

end
