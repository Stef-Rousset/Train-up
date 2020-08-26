class Skill < ApplicationRecord
  NAMES = ["Entraîneur", "Préparateur mental", "Préparateur Physique" ]
  
  belongs_to :user
  has_many :experiences, dependent: :destroy
  has_many :bookings

  validates :name, presence: true, inclusion: {in: Skill::NAMES}
  validates :location, presence: true
  validates :description, presence: true

end
