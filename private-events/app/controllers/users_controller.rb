class UsersController < ApplicationController
	def new
		if logged_in?
			redirect_to current_user
		end
		@user = User.new
	end
	def create
		if @user ||= User.find_by(name: user_params[:name])
			log_in @user
			redirect_to @user
		else
			@user = User.new(user_params)
			if @user.save
				log_in @user
				redirect_to @user
			else
				render 'new'
			end
		end
	end
	def show
		@user = User.find(params[:id])
		if @user == current_user
			@events = @user.created_events
			@event = Event.new
		else
			redirect_to root_url
		end
	end

	private
	def user_params
		params.require(:user).permit(:name)
	end
end
