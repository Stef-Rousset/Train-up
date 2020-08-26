class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]


	def home
	end

  def profile
    @profile = current_user
    @skills = Skill.where(user: current_user)
    @bookings = Booking.where(user: current_user)
    @experiences = Experience.where(user: current_user)
  end
end
