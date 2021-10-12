class Package < ApplicationRecord
  before_create :set_tracking_number

  enum delivery_status: %i[new processing delivered cancelled], _suffix: true
  validates :estimated_delivery_date, presence: true
  validates :tracking_number, uniqueness: true
  validates :tracking_number, presence: true
  validates_length_of :tracking_number, minimum: 5, maximum: 20

  private

  def set_tracking_number
    tracking_number = "YA#{8.times.map { rand(10) }.join}AA"
    if Package.exists?(tracking_number: tracking_number)
      set_tracking_number
    else
      self.tracking_number = tracking_number
    end
  end
end
