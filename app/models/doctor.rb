class Doctor < ApplicationRecord
  validates :speciality, presence: true
  validates :hourly, presence: true
  
  belongs_to :user, optional: true
  has_many :appointments, dependent: :destroy
  
end
