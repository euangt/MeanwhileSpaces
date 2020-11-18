class Space < ApplicationRecord
  has_many_attached :photos
  belongs_to :user
  validates :title, presence: true

  validates :price_per_day, presence: true
  validates :address, presence: true

  #validates :availability_status, presence: true -- Cannot validate boolean like this
  # missing validations on floor_space, longitude, latitude, description
end
