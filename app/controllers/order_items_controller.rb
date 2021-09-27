class OrderItemsController < ApplicationController
  def create
    @order_item = OrderItem.new(order_item_params)
    @food_item = FoodItem.find(order_item_params[:food_item_id])
    @order_item.food_item = @food_item
    @order_item.quantity = 1
    @order = helpers.current_order
    if @order.nil?
      @order = Order.create(user: current_user, restaurant: @food_item.restaurant, completed: false)
      session[:order_id] = @order.id
    end
    @order_item.order = @order

    if @order_item.save
      redirect_to restaurant_path(@food_item.restaurant), notice: 'New item was successfully added.'
    else
      render :new
    end
  end

  def order_item_params
    params.require(:order_item).permit(:food_item_id)
  end
end
