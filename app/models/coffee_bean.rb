class CoffeeBean < ApplicationRecord
    belongs_to :roaster

    def self.sort_by_date
        order(:created_at)
    end

    def self.sort_by_blend
        order(blend: :desc, created_at: :asc)
    end

    #validates_presence_of :name, :roast, :weight, :blend
end
