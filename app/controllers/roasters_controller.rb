class RoastersController < ApplicationController
    def index
        @roasters = Roaster.all
    end
end