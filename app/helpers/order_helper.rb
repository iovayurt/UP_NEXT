module OrderHelper
  def current_order
    #look for current order
    order_id = session[:order_id]
    if order_id
      order = Order.find(order_id)
      return order  if order
    end
    return nil
  end
end
