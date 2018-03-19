class DomainsController < ApplicationController
  def index
    @domain = Domain.all
  end

  def new
    @domain = Domain.new
  end

  def create
    domain_params = params.require(:domain).permit(:name, :description, :ftp_usr, :ftp_pwd, :db_usr, :db_pwd, :active)

    @domain = Domain.new (domain_params)

    if @domain.save
      flash[:notice] = "Create sucessfully"
      redirect_to domains_url
    else
      flash[:notice] = "Create failed"
      render 'new'
    end
  end

  def edit
    @domain = Domain.find(params[:id])
  end

  def update
    @domain = Domain.find(params[:id])
    domain_params = params.require(:domain).permit(:name, :description, :ftp_usr, :ftp_pwd, :db_usr, :db_pwd, :active)
    if @domain.update(domain_params)
      flash[:notice] = 'Update sucessfully'
      redirect_to domains_path
    else
      flash[:notice] = 'Update failed'
      render 'form'
    end
  end

end
