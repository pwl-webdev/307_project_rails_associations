class EventsController < ApplicationController
	def show
		@event = Event.find(params[:id])
		#@attendes = @event.attendees
	end
	def create
		@event = current_user.created_events.build(:description => event_params[:description], :location => event_params[:location], :time => Time.now)
		#@event = current_user.created_events.build(event_params)
		if @event.save
			flash[:success] = "Event created!"
		end
		redirect_to root_url
	end
	def index
		@events = Event.all
	end

	private
	def event_params
		params.require(:event).permit(:description, :location)
	end
end
