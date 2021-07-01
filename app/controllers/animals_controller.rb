class AnimalsController < ApplicationController
    def index
        animals = Animal.all
        render json: animals
    end

    def show
        animal = Animal.find(params[:id])
        render json: animal
    end

    def destroy
        animal = Animal.find(params[:id])
        animal.destroy
        render json: animal
    end
end
