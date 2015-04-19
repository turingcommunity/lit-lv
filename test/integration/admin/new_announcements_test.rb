require 'test_helper'

class Admin::NewAnnouncementsTest < ActionDispatch::IntegrationTest
  test "an admin user can create a new announcement" do
    user = create(:user, role:1)

    get new_admin_announcement_path
    assert_template "admin/announcements/new"
    title = "Title"
    body = "Body"
    expiration_date = Date.new(2015,5,5)
    created_by = "Admin"
    assert_difference "Announcement.count", 1 do
      post_via_redirect admin_announcements_path, { announcement:
                                      { title: title,
                                        body: body,
                                        expiration_date: expiration_date,
                                        created_by: created_by
                                      }
                                    }
    end
    refute flash.empty?
    assert_template "admin/announcements/index"
  end

  test "an admin user can create a new announcement using the form and be
    redirectd back to the announcement index page" do
    visit new_admin_announcement_path
    fill_in "announcement[title]", with: "Title"
    fill_in "announcement[body]", with: "Body Content"
    fill_in "announcement[title]", with: "Title"
    fill_in "announcement[created_by]", with: "Username"
    click_button "Submit"

    assert_equal admin_announcements_path, current_path
    assert page.has_content?("Your announcement was successfully created")
    assert page.has_content?("Title: Title")
    assert page.has_content?("Body: Body Content")
    assert page.has_content?("Created_By: Username")
  end
end
