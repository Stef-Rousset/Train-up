class Experience < ApplicationRecord
  belongs_to :sport
  belongs_to :skill

  validates :sport, presence: true
  validates :years, presence: true
  validates :price, presence: true
  validates :specialty, presence: true

  def duration
    (end_date - start_date).to_i
  end
end
