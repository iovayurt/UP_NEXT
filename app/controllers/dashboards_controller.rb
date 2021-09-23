class DashboardsController < ApplicationController
  def show
    @orders = current_user.orders
  end
end
