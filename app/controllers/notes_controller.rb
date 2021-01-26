class NotesController < ApplicationController
    def new
      @note = Note.new
      @trip = Trip.find(params[:trip_id])
    end

    def create
      @trip = Trip.find(params[:trip_id])
      @note = Note.new(note_params)
      @note.trip = @trip
      if @note.save
        redirect_to trip_path(@trip)
      else
        render 'trips/show'
      end
    end

    def edit
      @note = Note.find(params[:id])
    end

    def update
      @note = Note.find(params[:id]) 
      @note.update(note_params)
      trip = @note.trip
      redirect_to trip_path(trip)
    end


    def destroy
      @note = Note.find(params[:id])
      trip = @note.trip
      @note.destroy
      redirect_to trip_path(trip)
    end

    private

    def note_params
      params.require(:note).permit(:content, :location, :date, category_ids: [])
    end
end
