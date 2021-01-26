class NotesCategoriesController < ApplicationController
    
    def new
        @note = Note.find(params[:note_id])
        @note_category = NoteCategory.new
    end

    def create
        @note = Note.find(params[:note_id])
        @note_category = NoteCategory.new(strong_params)
        @note_category.note = @note
        trip = @note.trip
        if @note_category.save
          redirect_to trip_path(trip)
        else
          render :new
        end
    end

    private

    def strong_params
        params.require(:note_category).permit(category_ids: [])
    end
end
