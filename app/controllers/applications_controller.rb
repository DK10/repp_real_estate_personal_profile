class ApplicationsController < ApplicationController
  def index
    if current_tenant.present?
      @applications = current_tenant.applications
    elsif current_landlord.present?
      @applications = current_landlord.applications
    else
    redirect_to "/tenants/sign_in"

     end
  end
  def show
    @application = Application.find(params[:id])
  end

  def new
    if current_tenant.present?
    @application = Application.new
    else
      redirect_to "/tenants/sign_in"
  end
    end

  def create
    @application = Application.new
    @application.unit_id = params[:unit_id]
    @application.tenant_id = current_tenant.id

    if @application.save
      redirect_to "/applications", :notice => "Application created successfully."
    else
      render 'new'
    end
  end

  def edit
    @application = Application.find(params[:id])
  end

  def update
    @application = Application.find(params[:id])

    @application.unit_id = params[:unit_id]
    @application.tenant_id = params[:tenant_id]

    if @application.save
      redirect_to "/applications", :notice => "Application updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    @application = Application.find(params[:id])

    @application.destroy

    redirect_to "/applications", :notice => "Application deleted."
  end
end
