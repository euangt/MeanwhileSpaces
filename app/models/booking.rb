class Booking < ApplicationRecord
  validates :user_id, presence: true
  validates :space_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  belongs_to :user
  belongs_to :space

  # private

  # def validate_other_booking_overlap
  #   other_bookings = Booking.all
  #   is_overlapping = other_bookings.any? do |other_booking|
  #     period.overlaps?(other_booking.period)
  #   end
  #   errors.add(:overlaps_with_other) if is_overlapping
  # end
end
