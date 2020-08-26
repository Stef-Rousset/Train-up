class Skill < ApplicationRecord
  belongs_to :user
  has_many :experiences, dependent: :destroy
  has_many :sports, through: :experiences
  has_many :bookings

  validates :name, presence: true
  validates :location, presence: true
  validates :description, presence: true

  include PgSearch::Model
  pg_search_scope :global_search,
    ignoring: :accents,
    against: [ :name, :description, :location ],
    using: {
     trigram: { word_similarity: true },
     tsearch: { prefix: true, any_word: true }
    },
  	associated_against: {
  		experiences: [:years],
  		sports: [:name]
  	}
end
