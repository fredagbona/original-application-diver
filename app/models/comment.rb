class Comment < ApplicationRecord
  belongs_to :annonce

  belongs_to :user


  validates :content, presence: true

end
