class FoodItemsController < ApplicationController
  def show
    @food_items = Food_Item.find(params[:id])
    @restaurant = Restaurant.new
  end
end
