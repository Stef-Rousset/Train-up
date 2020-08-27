class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable


  has_many :skills
  has_many :bookings

  # has_many :booked_courses, through: :skills, class_name: 'Booking'
  has_many :reviews

  validates :first_name, presence: true
  validates :last_name, presence: true
  validates :address, presence: true
  validates :email, presence: true, uniqueness: true
  validates :sex, presence: true
  validates :birth_date, presence: true
  validates :encrypted_password, presence: true

end
