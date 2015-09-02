class AccountController < ApplicationController
  def index
    @accounts = Account.all
  end

  def show
    @accounts = Account.find(params[:id])
  end

  def new
    @accounts = Account.new
  end

  def create
    @accounts = Account.new(account_params)
    @accounts.save

    redirect_to :action => :index
  end

  def edit
    @accounts = Accoount.find(params[:id])
  end

  def update
    @accounts = Account.find(params[:id])
    @accounts.update(account_params)

    redirect_to :action => :show, :id => @accounts
  end

  def destroy
    @accounts = Account.find(params[:id])
    @accounts.destroy

    redirect_to :action => :index
  end

  private

  def account_params
    params.require(:account).permit(:FirstName, :LastName, :Active, :Location, :Login, :Debt, :Need_Reminder, :User_Gp)
  end
end
