class ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
  end

  def show
    @Activity = Activity.find(params[:id])
  end

  private

  # def activity_params
  #   params.require(:Activity).permit(:name, :address, :open_hour, :phone_number, :category)
  # end
end

