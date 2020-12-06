class RoastersController < ApplicationController
    def index
        @roasters = Roaster.all
    end

    def show
        @roaster = Roaster.find(params[:id])
    end

    # def is_micro?
    #     "hello world"
    # end

end