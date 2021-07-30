class Courier < ApplicationRecord
  has_many :packages
  validates :name, presence: true
  validates :email, presence: true
end
