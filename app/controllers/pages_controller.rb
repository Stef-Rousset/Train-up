class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]

	def home
	end

  def profile
    @reviews_last = Review.where(user: current_user).last(3)
    @skill = Skill.where(user: current_user)

    # @sbookings = current_user.bookings.each do |booking| 
	   #  @chatroom = Chatroom.joins(:participants).where(participants: {user_id: booking.skill.user, chatroom: current_user.chatrooms}).first 
	   #  @chatroom = Chatroom.new if @chatroom.nil?
    # end

  end

end

