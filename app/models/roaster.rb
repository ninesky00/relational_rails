class Roaster < ApplicationRecord
    has_many :coffee_beans

    def self.sort_by_date
        order(:created_at)
    end

    def self.sort_by_count
        # Select all roasters
        # Find count of coffee beans per roaster
        # Order by coffee bean count
        all.sort_by do |roaster|
            -roaster.coffee_beans.count
        end
    end
    
    def coffee_count
        coffee_beans.count
    end

    #validates_presence_of :name, :location
end
