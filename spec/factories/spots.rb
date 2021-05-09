FactoryBot.define do
  factory :spot do
    sequence(:name) { Faker::Address.street_name }
    latitude { Faker::Address.latitude.floor(14) }
    longitude { Faker::Address.longitude.floor(14) }
    description { Faker::Lorem.paragraphs }
  end
end
