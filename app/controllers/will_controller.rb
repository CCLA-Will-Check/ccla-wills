class WillController < ApplicationController

  def index
    @wills = Will.all
  end

  def new
    @will = Will.new
  end

  def create
    if params[:id] == "search-form"
      if params[:search]
        @wills = Will.search(params[:search]).order('created_at DESC')
      else
        @wills = Will.all.order('created_at DESC')
      end
      render 'index'
    else
      @will = Will.new(will_params)
      if @will.save
        @thank_you = "Thank you for registering with us. You registered the following will:"
        render 'show'
      else
        render 'new'
      end
    end
  end

  def show
    @will = Will.find(params[:id])
  end

  def import
    Will.import(params[:file])
    render 'success', notice: "Will(s) successfully imported"
  end


  private
  def will_params
    params.require(:will).permit(:first_name, :last_name, :alt_last_name, :dob, :city_of_birth, :province_of_birth, :country_of_birth, :last_resided, :lawyer_name, :firm_name, :lsuc, :telephone, :year)
  end
end
