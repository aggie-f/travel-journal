class GoalsController < ApplicationController
  def new
      @goal = Goal.new
      @trip = Trip.find(params[:trip_id])
    end

    def create
      @trip = Trip.find(params[:trip_id])
      @goal = Goal.new(goal_params)
      @goal.trip = @trip
      if @goal.save
        redirect_to trip_path(@trip)
      else
        render 'trips/show'
      end
    end

    def edit
      @goal = Goal.find(params[:id])
    end

    def update
      @goal = Goal.find(params[:id])
      @goal.update(goal_params)
      trip = @goal.trip
      redirect_to trip_path(trip)
    end


    def destroy
      @goal = Goal.find(params[:id])
      trip = @goal.trip
      @goal.destroy
      redirect_to trip_path(trip)
    end

    private

    def goal_params
      params.require(:goal).permit(:question, :answer)
    end
end
