class ReviewsController < ApplicationController
  def create
    @review = Review.new
    @restaurant = Restaurant.find(params[:restaurant_id])
    @activity = Activity.find(parmas[:activity_id])
    @review.restaurant = @restaurant if @restaurant
    @review.activity = @activity if @activity
    @review.user = current_user
    @review.save
    if @restaurant
      redirect_to restaurant_path(@restaurant)
    elsif @activity
      redirect_to activity_path(@activity)
    else
      redirect_to :root
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    @restaurant = Restaurant.find(params[:restaurant_id])
    @activity = Activity.find(parmas[:activity_id])
    if @restaurant
      redirect_to restaurant_path(@restaurant)
    elsif @activity
      redirect_to activity_path(@activity)
    end

  end

end
