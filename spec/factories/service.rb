FactoryBot.define do
  factory :service do
    service {FFaker::Name.name}
    description {FFaker::String}
    value {"20"}
    duration {"2"}
    schedules {true}
  end
end
