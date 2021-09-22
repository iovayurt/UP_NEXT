class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.all
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @order = Order.new
    @food_items = @restaurant.food_items
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :rating, :speciality, :capacity)
  end
end
