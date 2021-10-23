class Annonce < ApplicationRecord
    mount_uploader :image, AvatarUploader

    validates :title, presence: true
    validates :content, presence: true
    
    belongs_to :user

    has_many :comments, dependent: :destroy
    
end
