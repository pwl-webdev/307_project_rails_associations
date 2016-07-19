class PetOwner < ActiveRecord::Migration[5.0]
  def change
  	change_table :pets do |t|
  		t.references :owner
  	end
  end
end
