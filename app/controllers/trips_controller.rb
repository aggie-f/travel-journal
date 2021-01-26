class TripsController < ApplicationController
  def index
    
    @trips = Trip.where(owner_id: current_user.id)
    @shared_trips = current_user.shared_trips
    # @trips = [@owner_trips, @shared_trips]
    # @owner_trips = Trip.where(owner_id: current_user.id)
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def new
    @trip = Trip.new
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.owner = current_user
   # @trip.collaborations = Collaboration.new
   # @trip.collaborations.user = current_user
      if @trip.save
        redirect_to trips_path
      else
        flash[:alert] = "Fail"
      end
  end

  def trip_params
    params.require(:trip).permit(:destination, :start_date, :end_date)
  end

end
