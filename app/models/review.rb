class Review < ApplicationRecord
  belongs_to :booking
  belongs_to :user

  has_many :reviews, through: :bookings

  validates :content, presence: true
  validates :rating,  numericality: { greater_than: 0, less_than_or_equal_to: 5 }

  def display_review_form(user)
  (self.end_date < Date.today) && (self.reviews.find_by(user: user).nil?)
  end
end
