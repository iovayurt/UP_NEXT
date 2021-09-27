module OrderHelper
  def current_order
    #look for current order
    order_id = session[:order_id]
    if order_id
      order = Order.find_by_id(order_id)
      return order  if order && !order.completed
    end
    return nil
  end
end
