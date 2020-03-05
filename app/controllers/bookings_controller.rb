class BookingsController < ApplicationController
  before_action :find_booking, only: [:show,:destroy,:update]

  def index
    @bookings = Booking.all
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def set_restaurant
    @restaurant = Restaurant.find(params[:restaurant_id])

    if current_user.bookings.where(confirmed: false).empty?
      @booking = Booking.new
      @booking.restaurant = @restaurant
      @booking.user = current_user
      @booking.save
    else
      @booking = current_user.bookings.where(confirmed: false).last
      @booking.update(restaurant_id: @restaurant.id)
    end

    if @booking.activity_id
      redirect_to bookings_path
    else
      redirect_to activities_path
    end
  end

  def set_activity
   @activity = Activity.find(params[:activity_id])
    if current_user.bookings.where(confirmed: false).empty?
      @booking = Booking.new
      @booking.activity = @activity
      @booking.user = current_user
      @booking.save
    else
      @booking = current_user.bookings.where(confirmed: false).last
      @booking.update(activity_id: @activity.id)
    end

    if @booking.restaurant_id
      redirect_to bookings_path
    else
      redirect_to restaurants_path
    end
  end

  def update
    @booking.update(confirmed: true)
    redirect_to booking_path(@booking)
  end

  def destroy
    @booking.destroy
    redirect_to bookings_path
  end

  private

  def find_booking
    @booking = Booking.find(params[:id])
  end

end
