class Api::V1::PromptsController < ApplicationController

    before_action :set_mood
    
    def index
        @prompts = @mood.prompts
        render json: @prompts
        # prompts = Prompt.all 
        # render json: prompts
    end

    def create
        binding.pry
        @prompt = @mood.prompts.create(prompt_params)
        render json: @prompt
    end

    def show 
        @prompt = @mood.prompts.find(params[:id])
        render json: @prompt
        # prompt = Prompt.find_by(id: params[:id])
        # render json: prompt, include: :mood
    end

    def update
        @prompt = @mood.prompts.find(params[:id])
        render json: @prompt
    #   prompt = Prompt.find_by(id: params[:id])
    #   prompt.update(prompt_params)
    #   render json: prompt, include: :mood
    end

    def destroy
        @prompt = @mood.prompts.find(params[:id])
        @prompt.destroy
        render json: @prompt.id
    #   prompt = Prompt.find_by(id: params[:id])
    #   prompt.destroy
    #   render json: prompt.id
    end

    private

    def prompt_params
      params.require(:prompt).permit(:desc, :mood_id)
    end

    def set_mood
        @mood = Mood.find(params[:mood_id])
    end
end
