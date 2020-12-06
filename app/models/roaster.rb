class Roaster < ApplicationRecord
    has_many :coffee_beans

    # def is_micro?
    #     if micro == true
    #         "True"
    #     else
    #         "Not true"
    #     end
    # end
    #validates_presence_of :name, :location
end
