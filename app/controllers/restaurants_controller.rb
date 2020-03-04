class RestaurantsController < ApplicationController
  def index
    @restaurants = Restaurant.geocoded

    @markers = @restaurants.map do |restaurant|
      {
        lat: restaurant.latitude,
        lng: restaurant.longitude
      }
    end
  end


  def show
    @restaurant = Restaurant.find(params[:id])
    @review = Review.new
  end
end

