class Courier < ApplicationRecord
  has_many :packages

  validates :name,:email, presence: true
end
