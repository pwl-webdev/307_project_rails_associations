class PetType < ActiveRecord::Migration[5.0]
  def change
  	change_table :pets do |t|
  		t.rename :type, :pet_type
  	end
  end
end
