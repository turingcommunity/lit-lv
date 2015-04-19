FactoryGirl.define do
  factory :user do
    username "username"
    first_name "first_name"
    password "password"
    email "email@gmail.com"
    phone "111-111-1111"
    role 1
  end
end
