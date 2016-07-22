class User < ApplicationRecord
	has_many :created_events, :foreign_key => :creator_id, :class_name => "Event"
	has_many :invitations, :foreign_key => :attendee_id
	has_many :attended_events, through: :invitations

	scope :upcoming_events, -> { where("time >=" => Time.now) }
	scope :previous_events, -> { where("time <" => Time.now) }
end
