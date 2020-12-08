class CoffeeBeansController < ApplicationController

    def index
        @coffeebeans = CoffeeBean.all
    end

    def show
        @coffeebean = CoffeeBean.find(params[:id])
    end

end