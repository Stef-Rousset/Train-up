class Skill < ApplicationRecord
  belongs_to :user
  has_many :experiences, :bookings
  validates :name, :location, :description, presence: true
end
