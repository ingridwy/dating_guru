class Restaurant < ApplicationRecord
  has_many :reviews
  has_many :bookings
end
