class TopController < ApplicationController
  def index
    @stores = Store.all
    @evals = Eval.limit(3)
    params[:checklist] ||= {"eval1"=>"0", "eval2"=>"0", "eval3"=>"0", "eval4"=>"0", "eval5"=>"0"}
    @check = params[:checklist]
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
  
  def search
    c = []
    #@check = params[:checklist]
    params[:checklist].each do | di1,di2 |
      if di2 == "1"
        c.push("#{di1} = 1")
      end
    end
    if c == []
      @stores = Store.all
    else
      search_cond = [ c.join(' AND ') ]
      @stores = Store.where(search_cond)
    end
    render :index
  end
end
