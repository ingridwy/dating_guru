class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, optional: true
  belongs_to :activities, optional: true
end
