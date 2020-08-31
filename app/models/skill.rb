class Skill < ApplicationRecord

  belongs_to :user
  has_many :experiences, dependent: :destroy
  has_many :bookings, dependent: :destroy
  has_many :sports, through: :experiences
  has_many :reviews, through: :bookings

  has_one_attached :vidéo


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

  geocoded_by :location
  after_validation :geocode, if: :will_save_change_to_location?

end
