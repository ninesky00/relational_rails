class RoastersController < ApplicationController
    def index
        @roasters = Roaster.all
    end

    def show
        @roaster = Roaster.find(params[:id])
    end

    def new
    end

    def create  
        Roaster.create(roaster_params)
        redirect_to '/roasters'
    end

    def edit
        @roaster = Roaster.find(params[:id])
    end

    def update
        @roaster = Roaster.find(params[:id])
        @roaster.update(roaster_params)
        redirect_to "/roasters/#{@roaster.id}"
    end

    private
    def roaster_params
        params.permit(:name, :micro, :subscription_service, :location)
    end

end