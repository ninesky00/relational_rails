class RoastersController < ApplicationController
    def index
        if params[:sort_by_count]
            @roasters = Roaster.sort_by_count
        else
            @roasters = Roaster.sort_by_date
        end
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

    def delete
        Roaster.destroy(params[:id])
        redirect_to '/roasters'
    end

    private
    def roaster_params
        params.permit(:name, :micro, :subscription_service, :location)
    end

end