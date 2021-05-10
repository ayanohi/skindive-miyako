FactoryBot.define do
  factory :comment do
    spot { create(:spot) }
    user { create(:user) }
    weather { create(:weather) }
    tide { create(:tide) }
    wind { create(:wind) }
    content { Faker::Lorem.sentence }
    visit_date { Faker::Date.between(from: 3.years.ago, to: Date.today) }
    visit_time { Faker::Time.between(from: DateTime.now - 1, to: DateTime.now) }
  end
end
