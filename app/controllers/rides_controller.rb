class RidesController < ApplicationController

  def create
  	
  	ride = Ride.create(user_id: params[:user_id], attraction_id: params[:attraction_id])
  	msg = ride.take_ride
  	redirect_to user_path(params[:user_id]), notice: msg
  end

  private
  	

end
