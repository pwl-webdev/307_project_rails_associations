class InvitationAssociacions < ActiveRecord::Migration[5.0]
  def change
  	change_table :invitations do |t|
  		t.belongs_to :attendee
  		t.belongs_to :attended_event
  	end
  end
end
