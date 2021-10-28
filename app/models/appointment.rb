class Appointment < ApplicationRecord

  belongs_to :user, optional: true

  belongs_to :doctor, optional: true

 validates :message, presence: true
 
   
end
