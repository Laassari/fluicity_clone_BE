class User < ApplicationRecord
  has_secure_password

  validates :email, presence: true, uniqueness: true
  validates :first_name, length:{ minimum:3, maximum: 30}
  validates :last_name,  length:{ minimum:3, maximum: 30}
  validates :password_digest, presence: true, uniqueness: true, length: { minimum:8, maximum: 60}
end