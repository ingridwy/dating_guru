class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    @categories = @activities.pluck(:category)
  end

  def show
    @activity = Activity.find(params[:id])
    @review = Review.new
  end

  # def activity_params
  #   params.require(:Activity).permit(:name, :address, :open_hour, :phone_number, :category)
  # end
end

