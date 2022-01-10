class ItemsController < ApplicationController
  def index
    @items = Item.all
  end

  def new
    @warehouse = Warehouse.find(params[:warehouse_id])
    @item = Item.new
  end

  def create
    warehouse = Warehouse.find(params[:warehouse_id])
    item = warehouse.items.create(item_params)
    if item.save
      redirect_to warehouse_path(warehouse)
    else
      redirect_to new_warehouse_item_path(warehouse)
    end
  end

  def edit
    @choices = []
    warehouses = Warehouse.all
    warehouses.each do |warehouse|
    @choices << warehouse.location
    end
    @warehouse = Warehouse.find(params[:warehouse_id])
    @item = Item.find(params[:id])
  end

  def update
    warehouse = Warehouse.find(params[:warehouse_id])
    item = Item.find(params[:id])
    if item.update(item_params)
      redirect_to warehouse_path(warehouse)
    else
      redirect_to edit_warehouse_item_path(warehouse, item)
    end
  end

  def destroy
    warehouse = Warehouse.find(params[:warehouse_id])
    item = Item.find(params[:id])
    item.destroy
    redirect_to warehouse_path(warehouse)
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :price)
  end
end
