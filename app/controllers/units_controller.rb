class UnitsController < ApplicationController
  def index
    @units = Unit.all
  end

  def show
    @unit = Unit.find(params[:id])
  end

  def new
    if current_landlord.present?
    @unit = Unit.new
    else

      redirect_to "/landlords/sign_in"
    end
  end

  def create
    @unit = Unit.new
    @unit.landlord_id = current_landlord.id
    @unit.building_name = params[:building_name]
    @unit.building_address = params[:building_address]
    @unit.unit_number = params[:unit_number]
    @unit.city = params[:city]
    @unit.state = params[:state]
    @unit.zip = params[:zip]

    if @unit.save
      redirect_to "/units", :notice => "Unit created successfully."
    else
      render 'new'
    end
  end

  def edit
    if current_landlord.present?
    @unit = Unit.find(params[:id])
    else
    redirect_to "/landlords/sign_in"
    end
  end

  def update

    @unit = Unit.find(params[:id])

    @unit.landlord_id = params[:landlord_id]
    @unit.building_name = params[:building_name]
    @unit.building_address = params[:building_address]
    @unit.unit_number = params[:unit_number]
    @unit.city = params[:city]
    @unit.state = params[:state]
    @unit.zip = params[:zip]

    if @unit.save
      redirect_to "/units", :notice => "Unit updated successfully."
    else
      render 'edit'
    end
  end

  def destroy
    if current_landlord.present?
    @unit = Unit.find(params[:id])

    @unit.destroy

    redirect_to "/units", :notice => "Unit deleted."
    else redirect_to "/landlords/sign_in"
    end
  end
end
