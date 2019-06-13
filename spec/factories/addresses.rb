FactoryBot.define do
  factory :address do
    name {FFaker::AddressBR.street}
    number {FFaker::Random.rand}
    description {FFaker::String}
    postal_code {FFaker::AddressBR.zip_code}
    district {FFaker::AddressBR.state_abbr}
    city {FFaker::AddressBR.city}
    state {FFaker::AddressBR.state}
    association :professional_user, factory: :professional_user
  end
end
