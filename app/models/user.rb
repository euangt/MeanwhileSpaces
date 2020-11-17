class User < ApplicationRecord
  validates :first_name, presence: true
  validates :last_name, presence: true

  validates :password, presence: true, confirmation: true, length: { within: 6..40 }
  validates :phone_number, presence: true

  # TO-DO: has_many :windows


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable
end
