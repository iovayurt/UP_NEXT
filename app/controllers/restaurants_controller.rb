class RestaurantsController < ApplicationController
  def index
    # if we have pareas we need to felter our resto
    if params[:query].present?
      @restaurants = Restaurant.search_by_location_name_speciality(params[:query])
    else
      @restaurants = Restaurant.all
    end
    @markers = @restaurants.geocoded.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end

  def show
    @restaurant = Restaurant.find(params[:id])
    @order_item = OrderItem.new
    @food_items = @restaurant.food_items
  end

  private

  def restaurant_params
    params.require(:restaurant).permit(:name, :location, :rating, :speciality, :capacity)
  end
end
