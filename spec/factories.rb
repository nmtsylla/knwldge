FactoryBot.define do
  factory :answer do
    user { nil }
    question { nil }
  end

  factory :user do
    email { Faker::Internet.email }
    password { "testtest" }
    password_confirmation { "testtest" }
  end

  factory :session do
    name { Faker::Name.name }
    startedAt { Faker::Date.in_date_period(month: 2) }
    user
  end

  factory :question do
    content { Faker::Lorem.sentence }
    session
    user
  end
end
