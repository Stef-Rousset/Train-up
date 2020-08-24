class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user
  validates :rating, presence: true
end
