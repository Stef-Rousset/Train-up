class Sport < ApplicationRecord

  SPORTS = %w[Aikido, Athlétisme, Aviron, Badminton, Boxe, Danse, Escalade, Equitation,
    Judo, Kendo, Karaté, Kitesurf, Natation, Pilates, Plongée, Squash, Ski, Surf,
    Tennis de table, Voile, Yoga]

  has_many :experiences
  has_many :skills, through: :experiences
  validates :name, presence: true


end
