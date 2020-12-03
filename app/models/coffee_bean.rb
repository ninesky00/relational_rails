class CoffeeBean < ApplicationRecord
    belongs_to :user

    validates_presence_of :name, :roast, :weight, :blend
end
