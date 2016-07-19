class Pet < ApplicationRecord
	has_many :appointments
	has_many :workers, through: :appointments
	belongs_to :owner
end
