class PetWorkerRelationFix < ActiveRecord::Migration[5.0]
  def change
  	change_table :appointments do |t|
  		t.remove :worker_id
  		t.remove :pet_id
  		t.belongs_to :worker, index: true
  		t.belongs_to :pet, index: true
  	end
  end
end
