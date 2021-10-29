class Appointment < ApplicationRecord

  belongs_to :user, optional: true

  belongs_to :doctor, optional: true

 validates :message, presence: true
 validates :date,
 :date => { :after => Time.now + 1.day, :before => Time.now + 1.year }
 
   
end
