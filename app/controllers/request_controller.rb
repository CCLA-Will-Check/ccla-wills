class RequestController < ApplicationController

  def index
    @requests = Request.all
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"requests.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  def new
    @request = Request.new
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      redirect_to @request
    else
      render 'new'
    end

  end

  def show
    @request = Request.find(params[:id])
  end


  private
  def request_params
    params.require(:request).permit(:applicant, :testator_first, :testator_last, :testator_dob, :testator_city, :email, :telephone, :testator_alt, :testator_province, :testator_country, :testator_last_resident)
  end
end
