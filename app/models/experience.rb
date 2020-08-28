class Experience < ApplicationRecord
  belongs_to :sport
  belongs_to :skill

  validates :years, presence: true
  validates :price, presence: true

  def duration
    (end_date - start_date).to_i
  end
end
