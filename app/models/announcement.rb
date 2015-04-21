class Announcement < ActiveRecord::Base
  validates :title, presence: true
  validates :body, presence: true
  validates :expiration_date, presence: true
  validates :created_by, presence: true
end
