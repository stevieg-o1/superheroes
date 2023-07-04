class HeroesController < ApplicationController
    # GET /heroes
    def index
        @heroes = Hero.all
        render json: @heroes, each_serializer: HerowithpowersSerializer
    end

    #GET /heroes/:id
    def show
        @hero = Hero.find(params[:id])
        render json: @hero
    end
end