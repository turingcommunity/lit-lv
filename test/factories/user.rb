FactoryGirl.define do
  factory :user do
    username "richard"
    first_name "richard"
    password "password"
    email "richard@turing.io"
    phone "333-333-3333"
    role 1
  end

  factory :admin, class: User do
    username "cheek"
    first_name "josh"
    password "password"
    email "josh@turing.io"
    phone "333-333-3333"
    role 2
  end
end
