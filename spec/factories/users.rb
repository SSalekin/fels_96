require "faker"

FactoryGirl.define do
  factory :user do
    name {Faker::Name}
    email {Faker::Internet.email}
    admin false
    password {Faker::Internet.password 8}

    factory :admin do
      admin true
    end

    factory :invalid_password do
      password ""
    end

    factory :invalid_email do
      email ""
    end

    factory :another_user do
      name {Faker::Name.name}
      email {Faker::Internet.email}
    end
  end
end
