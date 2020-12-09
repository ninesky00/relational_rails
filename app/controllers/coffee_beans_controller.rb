class CoffeeBeansController < ApplicationController

    def index
        @coffeebeans = CoffeeBean.all
    end

    def show
        @coffeebean = CoffeeBean.find(params[:id])
    end

    def edit
        @coffeebean = CoffeeBean.find(params[:id])
    end

    def update
        @coffeebean = CoffeeBean.find(params[:id])
        @coffeebean.update(coffee_beans_params)
        redirect_to "/coffeebeans/#{@coffeebean.id}"
    end

    def delete
        CoffeeBean.destroy(params[:id])
        redirect_to '/coffeebeans'
    end

    private

    def coffee_beans_params
        params.permit(:name, :roast, :weight, :country_of_origin, :blend)
    end
end