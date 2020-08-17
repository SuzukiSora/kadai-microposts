class Micropost < ApplicationRecord
  belongs_to :user
  
  validates :content, presence: true, length: { maximum: 255 }
  
  
  has_many :reverses_of_favorite, class_name: 'favorite', foreign_key: 'user_id'
  has_many :users, through: :reverses_of_favorite, source: :user
  

end
