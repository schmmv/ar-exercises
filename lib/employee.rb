class Employee < ActiveRecord::Base
  belongs_to :store
  #presence validation for FK 
  validates :first_name, :last_name, :store_id, presence: true
  # validates :hourly_rate, numericality: { only_integer: true }
  validates :hourly_rate, numericality: { only_integer: true, in: 40..200 }

end

