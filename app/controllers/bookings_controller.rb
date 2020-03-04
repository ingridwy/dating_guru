class BookingsController < ApplicationController
  before_action :find_booking, only: [:show,:destroy]

  def index
    @bookings = Booking.all
  end


  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])
    @booking = Booking.where(user: current_user).last
    @booking = Booking.new unless @booking
    @booking.update(restaurant: @restaurant)
  end

  def set_activity
    @activity = Activity.find(params[:activity_id])
    @booking = Booking.where(user: current_user).last
    @booking = Booking.new unless @booking
    @booking.update(activity: @activity)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Book.find(params[:id])
  end
end
