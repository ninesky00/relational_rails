class CoffeeBean < ApplicationRecord
    belongs_to :roaster

    def self.sort_by_date
        order(:created_at)
    end

    #validates_presence_of :name, :roast, :weight, :blend
end
