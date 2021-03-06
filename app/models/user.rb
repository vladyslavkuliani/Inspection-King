class User < ApplicationRecord
  has_secure_password

  has_many :inspections, dependent: :destroy
  has_many :jobs

  validates :email, uniqueness: true, presence: true
  validates :password, presence: true
  validates :password_confirmation, presence: true

end
