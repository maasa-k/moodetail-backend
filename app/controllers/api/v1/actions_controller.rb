class Api::V1::ActionsController < ApplicationController

    before_action :set_prompt
    
    def index
        @actions = @prompt.actions
        render json: @actions
    end

    def create
        # binding.pry
        @action = @prompt.actions.create(action_params)
        render json: @prompt
    end

    def show 
        @prompt = @prompt.actions.find(params[:id])
        render json: @prompt
    end

    def destroy
        @prompt = @prompt.actions.find(params[:id])
        @prompt.destroy
        render json: @prompt
    end

    private

    def action_params
        # params.require :action
        # params.permit action: [:desc, :prompt_id]
    #   params.require(:action).permit(:desc, :prompt_id)
      params.permit(:desc, :prompt_id)
    end

    def set_prompt
        @prompt = Prompt.find(params[:prompt_id])
    end
end
