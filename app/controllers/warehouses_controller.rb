class WarehousesController < ApplicationController
  def index
    @warehouses = Warehouse.all
  end

  def show
    @warehouse = Warehouse.find(params[:id])
  end

  def new
    @warehouse = Warehouse.new
  end

  def create
    warehouse = Warehouse.create(warehouse_params)

    if warehouse.save
      redirect_to warehouses_path
      flash[:notice] = "#{warehouse.location} warehouse added."
    else
      redirect_to new_warehouse_path
      flash[:error] = "#{warehouse.location} warehouse already exists."
    end
  end

  def destroy
    warehouse = Warehouse.find(params[:id])

    warehouse.destroy
    redirect_to warehouses_path
    flash[:notice] = "#{warehouse.location} warehouse removed."
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:location)
  end
end
