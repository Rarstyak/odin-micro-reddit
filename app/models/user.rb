class User < ApplicationRecord
  validates :username,  presence: true, uniqueness: true, length: { mimimun: 4, maximum: 12 }
  validates :email,     presence: true, uniqueness: true
  validates :password,  presence: true, length: { mimimun: 6, maximum: 16 }

  has_many :posts
end
