class Carrier < ApplicationRecord
    has_many :loads, through: :carrier_load
end
