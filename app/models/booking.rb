class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :reviews
  validates :date, :start_hour, :end_hour, presence: true
end
