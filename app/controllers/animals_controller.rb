class AnimalsController < ApplicationController
    def index
        render plain: "We are in the index route!"
    end
end
