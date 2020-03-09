class Article < ApplicationRecord
    has_many :comments, dependent: :destroy
    validates :title, presence: true,
    length: { minimum: 5 }
    
    extend FriendlyId
      friendly_id :title, use: :slugged
end
