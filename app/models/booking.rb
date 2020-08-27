class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :reviews
  
  validates :date, presence: true
  validates :start_date, presence: true
  validates :end_end, presence: true
end
