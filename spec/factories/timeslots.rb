FactoryBot.define do
  factory :timeslot do
    title { Faker::Company.bs }
    reservable { false }
  end
end
