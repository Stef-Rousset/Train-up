class PagesController < ApplicationController
	skip_before_action :authenticate_user!, only: [ :home ]
<<<<<<< HEAD
<<<<<<< HEAD
	
=======

>>>>>>> 3d05955a8ee2e08c9a1b02eec8084b371aa11f80
=======

>>>>>>> 3d05955a8ee2e08c9a1b02eec8084b371aa11f80
	def home
	end

end
