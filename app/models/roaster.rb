class Roaster < ApplicationRecord
    has_many :coffee_beans

    def self.sort_by_date
        order(:created_at)
    end

    #validates_presence_of :name, :location
end
