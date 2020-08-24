class Sport < ApplicationRecord
  has_many :experiences
  validates :name, presence: true
end
