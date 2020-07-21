class RatingsController < ApplicationController
    
    def index
        @ratings = Rating.all
    end
    def new
        @rating = Rating.new
    end

    def create 
        rating = Rating.create(rating_params)
        redirect_to "/diners/#{rating.diner.id}"
    end

    private

    def review_params
        params.require(:rating).permit(:num_of_stars,:rating)
    end
end

