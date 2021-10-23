class Appointment < ApplicationRecord

  belongs_to :user, required: true

  belongs_to :doctor, required: true

 validates :message, presence: true
 
   
end
