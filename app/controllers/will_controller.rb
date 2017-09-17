class WillController < ApplicationController
  before_action :logged_in_user, only: [:index]

  def index
    approved = params['approved']
    if approved == 'true'
      @wills = Will.where(approved: true)
    elsif approved == 'false'
      @wills = Will.where(approved: false)
    else
      @wills = Will.all
    end
    respond_to do |format|
      format.html
      format.csv do
        headers['Content-Disposition'] = "attachment; filename=\"wills.csv\""
        headers['Content-Type'] ||= 'text/csv'
      end
    end
  end

  def new
    @will = Will.new
  end

  def edit
    @will = Will.find(params[:id])
  end

  def update
    @will = Will.find(params[:id])
    if @will.update_attributes(will_params)
      render 'show'
    else
      render 'edit'
    end
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
        render 'confirmation'
      else
        flash.now[:danger] = "Please enter all required fields."
        render 'new'
      end
    end
  end

  def confirmation
  end

  def show
    @will = Will.find(params[:id])
  end

  def import
    Will.import(params[:file])
    flash[:success] = "Wills successfully imported."
    render 'new'
  end

  def destroy
    Will.find(params[:id]).destroy
    flash[:success] = "Will deleted"
    render 'index'
  end

  private
  def will_params
    params.require(:will).permit(:first_name, :last_name, :alt_last_name, :dob, :city_of_birth, :province_of_birth, :country_of_birth, :last_resided, :lawyer_name, :firm_name, :lsuc, :telephone, :year, :approved)
  end

  def logged_in_user
    unless logged_in?
      flash[:danger] = "Please log in."
      redirect_to login_url
    end
  end
end
