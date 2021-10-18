class User < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :validatable

  validates :name, presence: true
  validates :address, presence: true
  validates :phone_number, presence: true, length:{minimum: 8}
  validates :service, presence: true, allow_blank: true
  validates :hourly, presence: true, allow_blank: true
  
  
  
  
  
  
end
