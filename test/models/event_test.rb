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

  def test_it_is_not_valid_without_start_date
    event.start_date = nil
    refute event.start_date
  end

  def test_it_is_not_valid_without_name
    event.name = nil
    refute event.name
  end

  def test_it_is_invalid_without_a_start_time
    event.start_time = nil
    refute event.start_time
  end

  def test_it_is_invalid_without_a_end_date
    event.end_date = nil
    refute event.end_date
  end

  def test_it_is_invalid_without_a_end_time
    event.end_time = nil
    refute event.end_time
  end

  def test_it_is_not_valid_without_description
    event.description = nil
    refute event.description
  end

  def test_it_is_not_valid_without_location
    event.location = nil
    refute event.location
  end
end
