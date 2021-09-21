class MenusController < ApplicationController
  def show
    @menus = Menu.find(params[:id])
    @restaurant = Restaurant.new
  end
end
