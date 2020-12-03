class CoffeeBean < ApplicationRecord
    belongs_to :roaster

    validates_presence_of :name, :roast, :weight, :blend
end
