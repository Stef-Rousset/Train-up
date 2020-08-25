class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  has_many :bookings
  has_many :skills
  has_many :reviews
  validates :first_name, :last_name, :address, :email, :sex, :birth_date, :encrypted_password, presence: true

end
