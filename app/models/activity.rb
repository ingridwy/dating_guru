class Activity < ApplicationRecord
  has_many :bookings
  has_many :reviews
end
