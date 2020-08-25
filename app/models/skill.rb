class Skill < ApplicationRecord
  belongs_to :user
  has_many :experiences
  has_many :bookings

  validates :name, :location, :description, presence: true
end
