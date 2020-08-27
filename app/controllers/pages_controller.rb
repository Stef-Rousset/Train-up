class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]

	def home
	end

  def profile
    @profile = current_user
    @skills = Skill.where(user: @profile)
    @bookings = Booking.where(user: @profile)
    @experiences = Experience.where(user: @profile)
    @bookings_past = Booking.where(user: @profile).where("date < ?", DateTime.now)
    @bookings_live = Booking.where(user: @profile).where("date >= ?", DateTime.now)
    @reviews_last = Review.where(user: @profile).last(3)
  end
end

