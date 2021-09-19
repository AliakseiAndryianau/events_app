FactoryBot.define do
  factory :event do
    name { Faker::Name.neutral_first_name + ' event' }
  end
end
