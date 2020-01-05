class User < ApplicationRecord
	validates :username, presence: true, uniqueness: true
  EMAIL_FORMAT = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :email, presence: true, format: { with: EMAIL_FORMAT }, uniqueness: true

  has_secure_password

  has_one :student, dependent: :destroy
  has_one :advisor,dependent: :destroy
end
