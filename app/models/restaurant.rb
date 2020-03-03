class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :bookings
  has_one_attached :photo
end
