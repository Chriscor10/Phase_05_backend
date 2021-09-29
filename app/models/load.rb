class Load < ApplicationRecord
  belongs_to :shipper
  belongs_to :carrier, through: :carrier_load
end
