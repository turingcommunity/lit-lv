require "test_helper"
class AnnouncementTest < ActiveSupport::TestCase
  test "can create an announcement with the proper info" do
    assert_difference "Announcement.count", +1 do
      announcement_params = { title: "NO School", 
                              body: "WOOT WOOT", 
                              expiration_date: 2.days.from_now, 
                              created_by: "richard" }
      Announcement.create(announcement_params)
    end
  end

  test "can not create an announcement without title" do
    assert_no_difference "Announcement.count" do
      announcement_params = { body: "WOOT WOOT", 
                              expiration_date: 2.days.from_now, 
                              created_by: "richard" }
      Announcement.create(announcement_params)
    end
  end

  test "can not create an announcement without body" do
    assert_no_difference "Announcement.count" do
      announcement_params = { title: "NO School", 
                              expiration_date: 2.days.from_now, 
                              created_by: "richard" }
      Announcement.create(announcement_params)
    end
  end

  test "can not create an announcement without expiration date" do
    assert_no_difference "Announcement.count" do
      announcement_params = { title: "NO School", 
                              body: "WOOT WOOT", 
                              created_by: "richard" }
      Announcement.create(announcement_params)
    end
  end

  test "can not create an announcement without created by" do
    assert_no_difference "Announcement.count" do
      announcement_params = { title: "NO School", 
                              body: "WOOT WOOT", 
                              expiration_date: 2.days.from_now }
      Announcement.create(announcement_params)
    end
  end
end
