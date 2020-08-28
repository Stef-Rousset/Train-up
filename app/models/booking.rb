class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :reviews

  scope :live, -> { where("start_date >= ?", DateTime.now) }
  scope :past, -> { where("end_date < ?", DateTime.now) }

  validates :start_date, presence: true
  validates :end_date, presence: true

  def duration
    ((end_date.strftime("%H:%M").to_i) - (start_date.strftime("%H:%M").to_i))
  end

  def total_price
    duration * skill.experiences.first.price
  end
end
