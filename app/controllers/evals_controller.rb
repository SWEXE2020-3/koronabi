class EvalsController < ApplicationController
  def index
    @evals = Eval.all
  end
  
  def new
    @eval = Eval.new
  end
  
  def create
    eval = Eval.new(ceval: params[:eval][:ceval], cmt: params[:eval][:cmt])
    eval.save
    redirect_to top_index_path
  end
  
  def destroy
    eval = Eval.find(params[:id])
    eval.destroy
    redirect_to top_index_path
  end

  def edit
    @eval = Eval.find(params[:id])
  end
  
  def update
    eval = Eval.find(params[:id])
    eval.update(ceval: params[:eval][:ceval], cmt: params[:ceval][:cmt])
    redirect_to top_index_path
  end
end
