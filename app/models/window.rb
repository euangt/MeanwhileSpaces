class Window < ApplicationRecord

  validates :title, presence: true
  # needs user_id
  validates :price_per_day, presence: true
  validates :address, presence: true, 
  validates :availability_status, presence: true,
  # missing validations on floor_space, longitude, latitude, description
end
