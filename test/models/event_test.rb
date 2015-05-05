require 'test_helper'
class EventTest < ActiveSupport::TestCase
  attr_reader :event

  def setup
    @event = FactoryGirl.create(:event)
  end  
    
  def test_it_has_a_start_date
    assert event.starts_at
  end

  def test_it_has_a_end_date
    assert event.ends_at
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
    event = FactoryGirl.build(:event, starts_at: nil)
    refute event.valid?
  end

  def test_it_is_not_valid_without_name
    event = FactoryGirl.build(:event, name: nil)
    refute event.valid?
  end

  def test_it_is_invalid_without_a_end_date
    event = FactoryGirl.build(:event, ends_at: nil)
    refute event.valid?
  end

  def test_it_is_not_valid_without_description
    event = FactoryGirl.build(:event, description: nil)
    refute event.valid?
  end

  def test_it_is_not_valid_without_location
    event = FactoryGirl.build(:event, location: nil)
    refute event.valid?
  end
end
