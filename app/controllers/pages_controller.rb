class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]

	def home
	end

  def profile
    @reviews_last = Review.where(user: current_user).last(3)
  end

end

