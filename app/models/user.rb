class User < ApplicationRecord
  has_many :articles

  after_commit :link_author, on: :create

  before_save { email.downcase! }
  
  validates :nick, presence: :true,
                    length: { minimum: 1, maximum: 255 },
                    format: { with: /\A[a-zA-Z0-9_]+\z/ }
  
  validates :email, presence: :true,
                    length: { minimum: 1, maximum: 255 },
                    uniqueness: true,
                    format: { with: /\A[a-zA-Z0-9\-_.]+@[a-zA-Z0-9\-_.]+\z/ }

  private

  def link_author
    Article.where(user_id: nil, author: self.nick).update_all(user_id: id)
  end
end
