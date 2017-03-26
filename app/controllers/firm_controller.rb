class FirmController < ApplicationController

  def index
    @firms = Firm.all
  end

  def new
    @firm = Firm.new
  end

  def create
    @firm = Firm.new(firm_params)
    if @firm.save
      render 'show'
    else
      render 'new'
    end

  end

  def show
    @firm = Firm.find(params[:id])
  end


  private
  def firm_params
    params.require(:firm).permit(:name, :address, :city, :province, :country, :postal_code, :telephone, :lsuc)
  end
end
