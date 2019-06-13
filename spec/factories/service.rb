FactoryBot.define do
  factory :service do
    service {FFaker::Name.name}
    description {FFaker::String}
    value {"20"}
    duration {"2"}
    address_id {}
    association :professional_user, factory: :professional_user
    association :address, factory: :address
  end
end
