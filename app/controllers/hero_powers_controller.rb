class HeroPowersController < ApplicationController

    # GET /hero_powers
    def index
        @hero_powers = HeroPower.all
        render json: @hero_powers
    end

    # GET /hero_powers/:id
    def show
        @hero_power = HeroPower.find(params[:id])
        render json: @hero_power
    end
    # POST /hero_powers
    def create
        @hero_power = HeroPower.create!(heropower_params)
        render json: @hero_power.hero
    rescue ActiveRecord::RecordInvalid => invalid
        render json: {errors: "validation errors"}, status: :unprocessable_entity
    end
    #private methods
    private
    def heropower_params
        params.permit(:hero_id, :power_id, :strength)
    end
end


