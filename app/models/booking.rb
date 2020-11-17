class Booking < ApplicationRecord
  validates :user_id, presence: true
  validates :space_id, presence: true
  validates :start_date, presence: true
  validates :end_date, presence: true

  belongs_to :user
  belongs_to :space

end