class PowersController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :render_not_found_response
       # GET /powers
        def index
            @powers = Power.all
            render json: @powers
        end
    
        # GET /powers/:id
        def show
            @power = Power.find(params[:id])
            render json: @power
        end
        # POST /powers
        def update
            @power = Power.find(params[:id])
            @power.update!(power_params)
            render json: @power
            rescue ActiveRecord::RecordInvalid => invalid
                render json: {errors: "validation errors"}, status: :unprocessable_entity
        end
        #Private methods
        private
        def render_not_found_response
            render json: { error: "Power not found" }, status: :not_found
        end
    
        def power_params
            params.permit(:description)
        end
    end