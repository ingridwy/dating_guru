class ReviewsController < ApplicationController
  def create
    @review = Review.new(review_params)
    if params[:restaurant]
      @restaurant = Restaurant.find(params[:restaurant])
      @review.restaurant = @restaurant
    else
      @activity = Activity.find(params[:activity])
      @review.activity = @activity
    end
    @review.user = current_user
    if @review.save
      if @restaurant
        redirect_to restaurant_path(@restaurant)
      else
        redirect_to activity_path(@activity)
      end
    else
      if @restaurant
        render "restaurants/show", restaurant: @restaurant
      else
        render "activities/show", activity: @activity
      end
    end
  end

  def destroy
    @review = Review.find(params[:id])
    @review.destroy
    if @review.restaurant
      redirect_to restaurant_path(@review.restaurant)
    else
      redirect_to activity_path(@review.activity)
    end

  end

  private

  def review_params
    params.require(:review).permit(:content, :rating)
  end

end
