class Article < ApplicationRecord
  validates :title, presence: :true,
                    length: { minimum: 1, maximum: 255 }

  validates :body, presence: :true,
                    length: { minimum: 1, maximum: 255 }
  
  validates :author, presence: :true,
                    length: { minimum: 1, maximum: 255 },
                    format: { with: /\A[a-zA-Z0-9_]+\z/ }
  
  validates :datetime, presence: :true
end
