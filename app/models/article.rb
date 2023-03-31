class Article < ApplicationRecord
  belongs_to :user, optional: true

  before_save :link_author

  validates :title, presence: :true,
                    length: { maximum: 255 }

  validates :body, presence: :true,
                    length: { maximum: 255 }
  
  validates :author, presence: :true,
                    length: { maximum: 255 },
                    format: { with: /\A[a-zA-Z0-9_]+\z/ }
  
  validates :datetime, presence: :true


  def link_author
    # Findes a user which haves nick == author
    user = User.where(nick: self.author).first
  end
end
