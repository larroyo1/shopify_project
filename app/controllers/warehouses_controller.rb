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
    else
      redirect_to new_warehouse_path
    end
  end

  private

  def warehouse_params
    params.require(:warehouse).permit(:location)
  end
end
