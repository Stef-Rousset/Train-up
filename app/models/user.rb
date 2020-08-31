class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :skills
  has_many :bookings # as client
  has_many :received_bookings, through: :skills, source: :bookings # as coach

  # has_many :booked_courses, through: :skills, class_name: 'Booking'
  has_many :reviews
  has_many :participants, dependent: :destroy
  has_many :chatrooms, through: :participants
  has_many :messages, dependent: :destroy
  has_one_attached :photo


  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :sex, presence: true
  validates :birth_date, presence: true
  validates :encrypted_password, presence: true
end
