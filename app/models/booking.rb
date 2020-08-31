class Booking < ApplicationRecord
  belongs_to :skill
  belongs_to :user
  has_many :reviews

  scope :live, -> { where("start_date >= ?", DateTime.now) }
  scope :past, -> { where("start_date < ?", DateTime.now) }

  validates :start_date, presence: true
  validates :start_hour, presence: true
  validates :end_hour, presence: true

  def duration
    (end_hour.to_i) - (start_hour.to_i)
  end

  def total_price
    duration * skill.experiences.first.price
  end
end
