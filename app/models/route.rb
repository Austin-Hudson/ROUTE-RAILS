class Route < ApplicationRecord
    # 1 - M association
    has_many :stops

    #validation
    validates :name, presence: true
end
