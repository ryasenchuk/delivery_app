class Package < ApplicationRecord
  validates :tracking_number, presence: true
end
