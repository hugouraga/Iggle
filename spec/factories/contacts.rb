FactoryBot.define do
  factory :contact do
    name {FFaker::Name.name}
    email {FFaker::Internet.email}
    message {FFaker::String}
  end
end
