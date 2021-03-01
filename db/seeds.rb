users = User.create([
  {name: 'あや', email: 'test@example.com', password: 'ffffff', password_confirmation: 'ffffff', admin: 'true' },
  {name: 'テストちゃん', email: 'test1@example.com', password: 'jjjjjj', password_confirmation: 'jjjjjj', admin: 'false' },
])

weathers = Weather.create([
  {name: '快晴'},
  {name: '晴れ'},
  {name: '曇り'},
  {name: '小雨'},
  {name: '大雨'},
  {name: '台風'},
  {name: '不明'}
])

tides = Tide.create([
  {name: '大潮'},
  {name: '小潮'},
  {name: '満潮'},
  {name: '干潮'},
  {name: '不明'}
])

winds = Wind.create([
  {name: '南'},
  {name: '北'},
  {name: '東'},
  {name: '西'},
  {name: '強'},
  {name: '無'},
  {name: '不明'}
])

require "csv"

# スポットー生物中間データ投入
CSV.foreach('db/csv/seed_spot_creatures.csv', headers: true) do |row|
  SpotCreature.create(
    spot_id: row['spot_id'],
    creature_id: row['creature_id'],
  )
end

# スポットー特徴中間データ投入
CSV.foreach('db/csv/seed_spot_features.csv', headers: true) do |row|
  SpotFeature.create(
    spot_id: row['spot_id'],
    feature_id: row['feature_id'],
  )
end
