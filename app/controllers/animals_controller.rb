class AnimalsController < ApplicationController
    before_action :load_animal, only: [:show, :destroy]

    def index
        render json: Animal.all
    end

    def show
        render json: @animal
    end

    def create
        @animal = Animal.new(animal_params)
        @animal.save
        render json: @animal
    end

    def destroy
        @animal.destroy
        render json: @animal
    end

    private

    def load_animal
        @animal = Animal.find(params[:id])
    end

    def animal_params
        params.require(:animal).permit(:real_name, :alter_ego, :environment)
    end
end
