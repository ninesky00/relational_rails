class RoasterCoffeeBeansController < ApplicationController
    def index
        @roaster = Roaster.find(params[:id])
    end
end