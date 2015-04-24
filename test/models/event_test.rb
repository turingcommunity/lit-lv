require 'test_helper'

class EventTest < ActiveSupport::TestCase
  attr_reader :event

  def setup
    @event = FactoryGirl.create(:event)
  end  
    
  def test_it_has_a_start_date
    assert_equal "08/06/2015", event.start_date
  end

  def test_it_has_a_start_time
    assert_equal "8:00am", event.start_time
  end

  def test_it_has_a_end_date
    assert_equal "08/07/2015", event.end_date
  end

  def test_it_has_an_end_time
    assert_equal "10:30am", event.end_time
  end

  def test_it_has_a_name
    assert_equal "College Visit", event.name
  end

  def test_it_has_a_description
    assert_equal "Students will travel to UNLV for tour.", event.description
  end

  def test_it_has_a_location
    assert_equal "UNLV", event.location
  end
end
