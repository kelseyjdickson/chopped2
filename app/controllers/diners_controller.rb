class DinersController < ApplicationController
    def index
        @diners = Diner.all
    end

    def show
        @diner = Diner.find(params[:id])
    end

    def new
        @diner = Diner.new
    end
    def create
        Diner.create(diner_params)
        redirect_to diners_path
    end

    def edit
        @diner = Diner.find(params[:id])
        
    end

    def update
        diner = Diner.find(params[:id])
        diner.update(diner_params)
        redirect_to diners_path(diner.id)
    end
    def destroy
        diner = Diner.find(params[:id])
        diner.destroy
        redirect_to diners_path
    end

    private
    def diner_params
        params.require(:diner).permit(:name,:borough)
    end
end
