module ApplicationHelper
	def log_in(user)
		session[:user_id] = user.id
	end
	def logged_in?
		!current_user.nil?
	end
	def current_user
		if(user_id = session[:user_id])
			@current_user ||= User.find_by(id: user_id)
		end
	end
end
