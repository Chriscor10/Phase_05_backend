class Load < ApplicationRecord
  belongs_to :shipper
  delegate :carrier, to: :shipper, allow_nil: true
end
