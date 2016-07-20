class UserEvent < ActiveRecord::Migration[5.0]
  def change
  	change_table :events do |t|
  		t.belongs_to :creator
  	end
  end
end
