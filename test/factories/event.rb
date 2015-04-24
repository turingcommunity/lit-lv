FactoryGirl.define do
  factory :event do
    start_date "08/06/2015"
    start_time "8:00am"
    end_date "08/07/2015"
    end_time "10:30am"
    name "College Visit"
    description "Students will travel to UNLV for tour."
    location "UNLV"
  end
end
