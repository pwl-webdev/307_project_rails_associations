class WorkerPetAppointments < ActiveRecord::Migration[5.0]
  def change
  	change_table :appointments do |t|
  		t.references :worker
  		t.references :pet
  	end
  end
end
