class User < ActiveRecord::Base
  has_many :purchases
  has_many :items
  has_many :categories

  has_secure_password
  validates :username, presence: true, uniqueness: true
  validates :password_digest, presence: true, on: :create, length: {minimum: 5}
end
