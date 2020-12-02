class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  
  def new
    @store = Store.new
  end
  
  def create
    store = Store.new(sname: params[:store][:sname], addr: params[:store][:addr], tel: params[:store][:tel], open: params[:store][:open],
                      eval1: params[:store][:eval1], eval2: params[:store][:eval2], eval3: params[:store][:eval3], eval4: params[:store][:eval4], eval5: params[:store][:eval5])
    store.save
    redirect_to top_index_path
  end
  
  def destroy
    store = Store.find(params[:id])
    store.destroy
    redirect_to top_index_path
  end

  def edit
    @store = Store.find(params[:id])
  end
  
  def update
    store = Store.find(params[:id])
    store.update(sname: params[:store][:sname], addr: params[:store][:addr], tel: params[:store][:tel], open: params[:store][:open],
                 eval1: params[:store][:eval1], eval2: params[:store][:eval2], eval3: params[:store][:eval3], eval4: params[:store][:eval4], eval5: params[:store][:eval5])
    redirect_to top_index_path
  end
end
