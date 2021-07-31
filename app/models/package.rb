class Package < ApplicationRecord
  validates :tracking_number, presence: true
  validates :tracking_number, uniqueness: true
end
