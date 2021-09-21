class OrdersController < ApplicationController
  def new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order = Order.new
  end

  def create
    @order = Order.new(order_params)
    @restaurant = Restaurant.find(params[:restaurant_id])
    @order.restaurant = @restaurant
    @order.user = current_user
    @order.total_price = @order.calculate_total_price

    if @order.save
      redirect_to dashboard_path(), notice: 'Order was successfully created.'
    else
      render :new
    end
  end

  def destroy
    @order = Order.find(params[:id])
    @order.destroy
    redirect_to restaurant_path(@order.list)
  end

  def order_params
    params.require(:order).permit(:reservation_time, :payment_type, :total_price)
  end
end
