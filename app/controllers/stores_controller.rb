class StoresController < ApplicationController
  def index
    @stores = Store.all
  end
  
  def new
    @store = Store.new
  end
  
  def create
    store = Store.new(sname: params[:store][:sname], addr: params[:store][:addr], tel: params[:store][:tel], open: params[:store][:open])
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
    store.update(sname: params[:store][:sname], addr: params[:store][:addr], tel: params[:store][:tel], open: params[:store][:open])
    redirect_to top_index_path
  end
end
