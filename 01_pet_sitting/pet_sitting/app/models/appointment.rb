class Appointment < ApplicationRecord
	belongs_to :worker, :foreign_key => "worker_id"
	belongs_to :pet, :foreign_key => "pet_id"
end
