class Event < ActiveRecord::Base
  extend SimpleCalendar
  has_calendar
  validates :starts_at, 
            :ends_at,  
            :name,
            :description,
            :location, presence: true
  belongs_to :user

  def short_name
    "#{name[0..12]}..."
  end
end
