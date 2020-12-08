class RoasterCoffeeBeansController < ApplicationController
    def index
        @roaster = Roaster.find(params[:id])
    end

    def new
        @roaster = Roaster.find(params[:id])
    end

    def create
        @roaster = Roaster.find(params[:id])
        @roaster.coffee_beans.create!(
            name: params[:name],name: params[:name], 
            roast: params[:roast],
            country_of_origin: params[:country_of_origin],
            blend: params[:blend]
        )
        redirect_to "/roasters/#{@roaster.id}/coffeebeans"
    end
end