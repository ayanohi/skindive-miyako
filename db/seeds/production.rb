users = User.create([
  {name: 'あや', email: 'test@example.com', password: 'ffffff', password_confirmation: 'ffffff', admin: 'true' },
  {name: 'テストユーザ', email: 'test1@example.com', password: 'jjjjjj', password_confirmation: 'jjjjjj', admin: 'false' },
])

areas = Area.create([
  {name: '宮古島 - 東'},
  {name: '宮古島 - 南'},
  {name: '宮古島 - 西'},
  {name: '伊良部島'},
  {name: '下地島'},
  {name: '八重干瀬'},
  {name: '来間島'},
  {name: '池間島'},
  {name: '大神島'},
  {name: '多良間島'},
  {name: '水納島'}
])

features = Feature.create([
  {name: '水中洞窟'},
  {name: '水中砂地'},
  {name: 'サンゴ'},
  {name: 'ダイバーがいる'},
  {name: 'ビーチあり'},
  {name: '近場に飲食店あり'},
  {name: 'サンセットあり'},
  {name: '駐車場あり'},
  {name: '星空'}
])

creatures = Creature.create([
  {name: 'ウミガメ'},
  {name: 'マンタ'},
  {name: 'クジラ'},
  {name: 'イルカ'},
  {name: 'カマス'},
  {name: 'クマノミ'}
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

spots = Spot.create([
  {
    name: '白鳥崎',
    description: '好条件が揃ったら絶対に行きたいところ。時季と運が良ければマンタに会えると有名です。
    白鳥岬公園に車を停めて、岩場を５分ほど歩いてエントリーします。
    上級者向けの洞窟もあり、流れがなければ本当に神秘的なスポットです。
    もしも条件が悪ければ車で通りかかっても分かるはず、大きな白波が見えるので、別スポットへ行きましょう。',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 4,
    latitude: 24.86315273676422,
    longitude: 125.16265601373505
  },
  {
    name: 'サバウツガー',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 4,
    latitude: 24.847267633507474,
    longitude: 125.20580653965264
  },
  {
    name: '与那覇前浜',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 3,
    latitude: 24.73551763652275,
    longitude: 125.26280279838262
  },
  {
    name: '17END',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.841414296148443,
    longitude: 125.13962267007398
  },
  {
    name: 'シギラ',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 2,
    latitude: 24.720810501146957,
    longitude: 125.34080374439873
  },
  {
    name: 'イフ',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 6,
    latitude: 24.997270494472506,
    longitude: 125.25767161029522
  },
  {
    name: '中の島海岸',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.813874773302924,
    longitude: 125.1452035715875
  },
  {
    name: 'ムスヌン浜',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 7,
    latitude: 24.717951006213717,
    longitude: 125.24009674042526
  },
  {
    name: '名無ビーチ',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 8,
    latitude: 24.89394811817826,
    longitude: 125.27020961585875
  },
  {
    name: '長間浜',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 7,
    latitude: 24.72618237838645,
    longitude: 125.23984891266089
  },
  {
    name: 'ゴルフ場裏',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 2,
    latitude: 24.72410002230413,
    longitude: 125.28735272617293
  },
  {
    name: 'ゼロ',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.81024482664304,
    longitude: 125.14671965110108
  },
  {
    name: '一ノ瀬',
    description: '行きたい
    行きたい行きたい
    行きたい行きたい行きたい',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.81024482664304,
    longitude: 125.14671965110108
  },
])

spot1 = Spot.find(1)
spot1.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/白鳥崎.jpg"), filename: '白鳥崎.jpg')
spot2 = Spot.find(2)
spot2.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/サバウツガー.jpg"), filename: 'サバウツガー.jpg')
spot3 = Spot.find(3)
spot3.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/与那覇前浜.jpg"), filename: '与那覇前浜.jpg')
spot4 = Spot.find(4)
spot4.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/17END.jpg"), filename: '17END.jpg')
spot5 = Spot.find(5)
spot5.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/シギラ.jpg"), filename: 'シギラ.jpg')
spot6 = Spot.find(6)
spot6.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/イフ.jpg"), filename: 'イフ.jpg')
spot7 = Spot.find(7)
spot7.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/中の島海岸.jpg"), filename: '中の島海岸.jpg')
spot8 = Spot.find(8)
spot8.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/ムスヌン浜.jpg"), filename: 'ムスヌン浜.jpg')
spot9 = Spot.find(9)
spot9.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/名無ビーチ.jpg"), filename: '名無ビーチ.jpg')
spot10 = Spot.find(10)
spot10.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/長間浜.jpg"), filename: '長間浜.jpg')
spot11 = Spot.find(11)
spot11.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/ゴルフ場裏.jpg"), filename: 'ゴルフ場裏.jpg')
spot12 = Spot.find(12)
spot12.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/ゼロ.jpg"), filename: 'ゼロ.jpg')
spot13 = Spot.find(13)
spot13.images.attach(io: File.open("#{Rails.root}/db/fixtures/img/一ノ瀬.jpg"), filename: '一ノ瀬.jpg')

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
