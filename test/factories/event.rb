FactoryGirl.define do
  factory :event do
    starts_at "2015-08-06 09:08:45 -0600"
    ends_at "2015-08-06 12:08:45 -0600"
    name "College Visit"
    description "Students will travel to UNLV for tour."
    location "UNLV"
  end
end
