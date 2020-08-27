class Experience < ApplicationRecord
  belongs_to :sport
  belongs_to :skill

  validates :years, presence: true
  validates :price, presence: true
end
