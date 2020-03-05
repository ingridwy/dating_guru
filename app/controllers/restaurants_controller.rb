class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.geocoded

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: restaurant })
      }
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @markers =
      {
        lat: @activity.latitude,
        lng: @activity.longitude,
        infoWindow: render_to_string(partial: "info_window", locals: { restaurant: @restaurant })
      }
    @review = Review.new
  end
end

