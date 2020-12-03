class Roaster < ApplicationRecord
    has_many :coffee_beans

    validates_presence_of :name, :location
end
