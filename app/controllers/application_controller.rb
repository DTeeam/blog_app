class ApplicationController < ActionController::Base

	def index
		@users = get_users
		render @users
	end
end
