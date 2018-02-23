class User < ApplicationRecord
  has_secure_password
  has_attached_file :avatar, styles: { medium: "300x300>", thumb: "100x100>" } 
  validates_attachment :avatar, content_type: { content_type: /\Aimage\/.*\z/ }
  has_many :artworks
end
