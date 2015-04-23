FactoryGirl.define do
  factory :user do
    username 'richard'
    first_name 'richard'
    password 'password'
    email 'richard@turing.io'
    phone '333-333-3333'

    trait :basic do
      role 1
    end

    trait :admin do
      role 0
    end
  end
end
