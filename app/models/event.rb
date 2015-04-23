require 'byebug'

class Event < ActiveRecord::Base

  def start_date
    Event.start_date
  end
end
