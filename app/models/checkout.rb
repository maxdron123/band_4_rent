class Checkout < ApplicationRecord
  belongs_to :user
  belongs_to :band
  validates :booking_date, presence: true
  validate :rent_date_after_present_date


  private

  def rent_date_after_present_date
    if booking_date < Date.today
      errors.add(:booking_date, 'cannot be in the past')
    end
  end
end
