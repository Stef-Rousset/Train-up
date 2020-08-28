class Sport < ApplicationRecord

  has_many :experiences
  has_many :skills, through: :experiences
  validates :name, presence: true

end
