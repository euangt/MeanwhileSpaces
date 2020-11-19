class Space < ApplicationRecord
  has_one_attached :photo
  belongs_to :user
  has_many :bookings, dependent: :destroy # not sure about this?
  validates :title, presence: true

  validates :price_per_day, presence: true
  validates :address, presence: true

  geocoded_by :address
  after_validation :geocode, if: :will_save_change_to_address?

  #validates :availability_status, presence: true -- Cannot validate boolean like this
  # missing validations on floor_space, longitude, latitude, description
end
