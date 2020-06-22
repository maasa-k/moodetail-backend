class Api::V1::MoodsController < ApplicationController
    def index
        @moods = Mood.all 
        render json: @moods
    end

    def show
        @mood = Mood.find(params[:id])
        render json: @mood, include: [:prompts]
    end
end