class Api::V1::PromptsController < ApplicationController

    before_action :set_prompt
    
    def index
        @notes = @prompt.notes
        render json: @notes
    end

    def create
        @note = @prompt.notes.create(note_params)
        render json: @prompt
    end

    def destroy
        @note = @prompt.notes.find(params[:id])
        @note.destroy
        render json: @prompt
    end

    private

    def note_params
      params.require(:note).permit(:desc, :prompt_id)
    end

    def set_prompt
        @prompt = Prompt.find(params[:prompt_id])
    end
end