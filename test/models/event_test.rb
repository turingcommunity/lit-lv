require 'test_helper'

class EventTest < ActiveSupport::TestCase
  def test_it_has_a_start_date
    Event.create(start_date: "08/06/2015")
    # event = FactoryGirl.create(:event)
    assert_equal "08/06/2015", event.start_date
  end
end
