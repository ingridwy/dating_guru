class Review < ApplicationRecord
  belongs_to :user
  belongs_to :restaurant, optional: true
  belongs_to :activities, optional: true
  validates :rating, presence: true
  validates :content, presence: true
end
