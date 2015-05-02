require 'byebug'

class Event < ActiveRecord::Base
  validates :start_date, 
            :start_time, 
            :end_date,  
            :end_time,
            :name,
            :description,
            :location, presence: true
  belongs_to :user
end
