class User < ApplicationRecord
  has_secure_password
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" } 
  validates_attachment_content_type :avatar, content_type: /\Aimage\/.*\z/
  has_many :artworks
  has_many :posts, -> { order(created_at: :desc) }

  has_many :conversations, :foreign_key => :sender_id
end
