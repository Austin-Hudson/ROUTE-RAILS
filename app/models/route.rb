class Route < ApplicationRecord

    #validation
    validates :name, presence: true
end
