class Api::V1::PromptsController < ApplicationController

    before_action :set_mood
    
    def index
        @prompts = @mood.prompts
        render json: @prompts
    end

    def create
        @prompt = @mood.prompts.create(prompt_params)
        render json: @mood
    end

    def show 
        @prompt = @mood.prompts.find(params[:id])
        render json: @prompt
    end

    # def update
    #     @prompt = @mood.prompts.find(params[:id])
    #     @prompt.update(prompt_params)
    #     render json: @mood
    # end

    def destroy
        @prompt = @mood.prompts.find(params[:id])
        @prompt.destroy
        render json: @mood
    end

    private

    def prompt_params
      params.require(:prompt).permit(:desc, :mood_id, :controllable {action: [:desc, :prompt_id]})
    end

    def set_mood
        @mood = Mood.find(params[:mood_id])
    end
end
