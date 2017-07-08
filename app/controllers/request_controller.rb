class RequestController < ApplicationController
  before_action :logged_in_user, only: [:index]

  def index
    status = params[:status] || "All"
    if status == "All"
      @requests = Request.all
    else
      @requests = Request.where(status: status)
    end
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

  def edit
    @request = Request.find(params[:id])
  end

  def update
    @request = Request.find(params[:id])
    if @request.update_attributes(request_params)
      render 'show'
    else
      render 'edit'
    end
  end

  def create
    @request = Request.new(request_params)
    if @request.save
      render 'confirmation'
    else
      flash[:danger] = "Please enter all required fields."
      render 'new'
    end

  end

  def confirmation
  end

  def destroy
    Request.find(params[:id]).destroy
    flash[:success] = "Request deleted"
    render 'index'
  end

  def show
    @request = Request.find(params[:id])
  end


  private
  def request_params
    params.require(:request).permit(:applicant, :testator_first, :testator_last, :testator_dob, :testator_city, :email, :telephone, :testator_alt, :testator_province, :testator_country, :testator_last_resident, :status, :lsuc)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
