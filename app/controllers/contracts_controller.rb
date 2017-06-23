class ContractsController < ApplicationController
  before_action :set_contracts, only: [:edit, :update, :show, :destroy]
  def new
    @contract = Contract.new
  end
  
  def index
    @contract = Contract.all
  end
  
  def create
    #render plain: params[:article].inspect
    @contract = Contract.new(article_params)
    if @contract.save
      flash[:success] = "Contract was succesfully created"
      redirect_to contract_path(@contract)
    else
      render 'new'#:new will also work
    end
  end
  
  def show
  end
  
  def destroy
    @contract.destroy
    flash[:info] = "Contracts succesfully deleted"
    redirect_to contracts_path
  end
  
  private
  def set_contracts
     @contract = Contract.find(params[:id])
  end
  def article_params
    params.require(:contract).permit(:cname)
  end
  
end