FactoryBot.define do
  factory :professional_user do
    name {FFaker::Name.name}
    password {FFaker::Internet.password(min_length = 6)}
    email {FFaker::Internet.email}
    phone {FFaker::PhoneNumberBR.mobile_phone_number}
    document {FFaker::Random.rand}
    description {FFaker::String}
  end
end
