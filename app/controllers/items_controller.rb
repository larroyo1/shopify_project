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
      flash[:notice] = "#{item.name} added to the #{warehouse.location} warehouse."
    else
      redirect_to new_warehouse_item_path(warehouse)
      flash[:error] = "Item price/quantity must be greater than 0."
    end
  end

  def edit
    @warehouse = Warehouse.find(params[:warehouse_id])
    @item = Item.find(params[:id])
  end

  def update
    warehouse = Warehouse.find(params[:warehouse_id])
    item = Item.find(params[:id])

    if item.update(item_params)
      redirect_to warehouse_path(warehouse)
      flash[:notice] = "#{item.name} has been updated."
    else
      redirect_to edit_warehouse_item_path(warehouse, item)
      flash[:error] = "Item price/quantity must be greater than 0."
    end
  end

  def destroy
    warehouse = Warehouse.find(params[:warehouse_id])
    item = Item.find(params[:id])
    
    item.destroy
    redirect_to warehouse_path(warehouse)
    flash[:notice] = "#{item.name} removed from the #{warehouse.location} warehouse."
  end

  private

  def item_params
    params.require(:item).permit(:name, :quantity, :price)
  end
end
