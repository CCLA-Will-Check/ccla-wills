class RegisterController < ApplicationController

  def index
    @testators = Testator.all
  end

  def new
    @testator = Testator.new
  end

  def create
    @testator = Testator.new(testator_params)
    if @testator.save
      render 'show'
    else
      render 'new'
    end

  end

  def show
    @testator = Testator.find(params[:id])
  end


  private
  def testator_params
    params.require(:testator).permit(:first_name, :last_name, :alt_last_name, :dob, :city_of_birth, :province_of_birth, :country_of_birth, :last_resided, :firm_id)
  end
end
