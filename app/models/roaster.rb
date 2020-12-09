class Roaster < ApplicationRecord
    has_many :coffee_beans

    def self.sort_by_date
        order(:created_at)
    end

    def coffee_count
        coffee_beans.count
    end

    #validates_presence_of :name, :location
end
