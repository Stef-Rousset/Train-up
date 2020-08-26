class Skill < ApplicationRecord
  belongs_to :user
  has_many :experiences, dependent: :destroy
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    against: [ :name, :description, :location ],
    associated_against: {
      experience: [ :specialty ]
    },
    associated_against: {
    sport: [ :name ]
    },
    using: {
      tsearch: { prefix: true, :dictionary => "french"}
    },
    ignoring: :accents

end
