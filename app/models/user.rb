class User < ActiveRecord::Base
  has_secure_password

  enum role: %w(default admin)

  validates :username, presence: true, uniqueness: true
  validates :email, presence: true, uniqueness: true
  validates :first_name, presence: true
  validates :phone, presence: true

  has_many :events
end
