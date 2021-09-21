class OrderItemsController < ApplicationController
  def create
    @order_item = Order_Item.new(order_item_params)
    @food_item = Food_Item.find(params[:food_item_id])
    @order_item.food_item = @food_item
    @order_item.user = current_user

    if @order.save
     # redirect_to dashboard_path(), notice: 'New item was successfully added.'
    else
      render :new
    end
  end
end
