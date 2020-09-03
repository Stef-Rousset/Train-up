class Chatroom < ApplicationRecord
  has_many :messages, dependent: :destroy
  has_many :participants, dependent: :destroy
  has_many :users, through: :participants

  def self.find_by_users(user_1, user_2)
    Chatroom.all.select { |cr| cr.participants.map(&:user).include?(user_1) && cr.participants.map(&:user).include?(user_2) }.first
  end
end
