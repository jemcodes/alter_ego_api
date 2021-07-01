class AnimalsController < ApplicationController
    before_action :load_animal, only: [:show, :update, :destroy]

    def index
        render json: Animal.all
    end

    def show
        render json: @animal
    end

    def create
        @animal = Animal.new(animal_params)
        if @animal.save
            render json: @animal
        else
            render json: @animal.errors, status: :unprocessable_entity
        end  
    end

    def update
        if @animal.update(animal_params)
            render json: @animal
        else
            render json: @animal.errors, status: :unprocessable_entity
        end
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
