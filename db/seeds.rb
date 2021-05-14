users = User.create([
  {name: 'あや', email: 'test@example.com', password: 'ffffff', password_confirmation: 'ffffff', admin: 'true',
  image: File.open("#{Rails.root}/db/fixtures/user-one.jpg"),
  introduction: 'リゾートスキンダイバーです', pb: '12', sns: 'aya' },
  {name: 'ゆき', email: 'test1@example.com', password: 'ffffff', password_confirmation: 'ffffff', admin: 'false',
  image: File.open("#{Rails.root}/db/fixtures/user-two.jpg"),
  introduction: '移住3年目', pb: '25', sns: 'yuki'},
  {name: 'みく', email: 'test2@example.com', password: 'ffffff', password_confirmation: 'ffffff', admin: 'false',
  introduction: 'リーダーフィンとガルのマスクを使ってます', pb: '18', sns: 'miku'},
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
    description: '好条件が揃ったら絶対に行きたいところ。
    時季と運が良ければマンタに会えると有名です。上級者向けの洞窟もあり、流れがなければ神秘的なスポットを堪能できます。水深が深く、流れも早いことが多いので注意が必要です。
    条件が悪い日は車で通りかかっても分かるはず。大きな白波が見えるので、別スポットへ行きましょう。

    駐車場：広い・高台にある白鳥岬公園にあり
    エントリー：遊歩道と岩場を５分ほど歩く',
    postal_code: '906-0507',
    address: '沖縄県宮古島市伊良部佐和田９０８−２',
    area_id: 4,
    latitude: 24.86315273676422,
    longitude: 125.16265601373505
  },
  {
    name: 'サバウツガー',
    description: '泳いで青の洞窟に行けるスポット。
    テーブルサンゴを10分ほど泳ぐと、小さな青の洞窟があります。ダイビング船やスキンダイバーも多くいます。
    干潮時にはテーブルサンゴの水深がかなり浅いので、傷つけないよう必ず潮の時刻に注意しましょう。

    駐車場：少ない・高台にあり
    エントリー：断崖絶壁の階段を123段くだる
    ※2020/8月台風の影響で階段や崖が崩れ「立入禁止」となっています！',
    postal_code: '906-0000',
    address: '沖縄県宮古島市伊良部前里添５８８−７０',
    area_id: 4,
    latitude: 24.847267633507474,
    longitude: 125.20580653965264
  },
  {
    name: '与那覇前浜',
    description: '宮古島で最も有名なビーチ。
    約7kmにわたる白い砂浜が広がり、売店・トイレ・シャワー・マリンアクティビティショップがあり、最も行きやすい海水浴場です。
    来間島へと架かる来間大橋が見え、宮古島東急ホテルの目の前なので、ウェディングフォトの撮影もよく行われています。ビーチでのんびり、ジェットスキーで思い切り遊びたい人にぴったりです。

    駐車場：多い
    エントリー：白い砂浜',
    postal_code: '906-0000',
    address: '沖縄県宮古島市下地与那覇１１９９',
    area_id: 3,
    latitude: 24.73551763652275,
    longitude: 125.26280279838262
  },
  {
    name: '17END',
    description: '定番のサンセットスポット。
    干潮時は真っ白な砂浜が現れてまさに天国と言われています。下地島空港の先にあり、滑走路にそって長く続くテトラポットはサンセット時に毎日多くの人で賑わっています。飛行機の離発着の見える貴重なスポット。サンゴなどはいないので、SUPや夕日鑑賞におすすめです。

    駐車場：多い
    エントリー：白い砂浜',
    postal_code: '906-0507',
    address: '沖縄県宮古島市伊良部佐和田',
    area_id: 5,
    latitude: 24.841414296148443,
    longitude: 125.13962267007398
  },
  {
    name: 'シギラビーチ',
    description: '湾になっている安全スポット。
    シギラリゾートの目の前にあります。遠浅でシュノーケルツアーも多いことから、子連れファミリーも多いです。

    駐車場：多い
    エントリー：砂浜・岩場',
    postal_code: '906-0000',
    address: '沖縄県宮古島市上野新里',
    area_id: 2,
    latitude: 24.720810501146957,
    longitude: 125.34080374439873
  },
  {
    name: 'ヤビジ・イフ',
    description: 'ツアーでしか行けない絶景スポット。
    船で30分ほどの場所なので、ツアー予約必須！
    テーブル珊瑚、砂地、砂でできた島など、当日おすすめの場所を選んで連れて行ってくれます。朝8~9時集合のガイドさんが多く、5~6時間たっぷり遊べます！風の強い日は出航できないので、数日の滞在期間で必ず行きたい人は天気予報にも注意してください。
    休日はすぐ満員になるので早めの予約がおすすめです。

    駐車場：ツアーによる（港集合が多い）
    エントリー：船',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 6,
    latitude: 24.997270494472506,
    longitude: 125.25767161029522
  },
  {
    name: '中の島海岸',
    description: '外海からあまり影響を受けない穏やかなスポット。
    他スポットでは潜れないような風の日でも、比較的安全に潜りやすい場所です。内海は水深2～4ｍほどで、浅瀬でも多くの魚が泳いでいます。沖に行けば水深10ｍほどで、カクレクマノミなどカラフルな魚や、カマスの大群に出会えることも。
    船やダイバーも多い人気スポットで、シュノーケリング初心者から中級者まで幅広く楽しむことができます。

    駐車場：なし（路肩に駐車している人が多い）
    エントリー：ビーチ・岩場',
    postal_code: '906-0504',
    address: '沖縄県宮古島市伊良部',
    area_id: 5,
    latitude: 24.813874773302924,
    longitude: 125.1452035715875
  },
  {
    name: 'ムスヌン浜',
    description: '来間島の隠れビーチ。
    海流が早く、西側に面しているため、サンセットや星空鑑賞にぴったりです。おしゃれなカフェやショップのある来間島で遊んだあと、プライベートビーチのようなここでゆっくりするのがおすすめ。

    駐車場：あり
    エントリー：ビーチ・岩場',
    postal_code: '906-0306',
    address: '沖縄県宮古島市下地来間 来間島',
    area_id: 7,
    latitude: 24.717951006213717,
    longitude: 125.24009674042526
  },
  {
    name: '名無ビーチ',
    description: '池間大橋へと続く半島の西側には隠れビーチがたくさんあります。
    すむばり食堂の近く。ドライブ後にビーチでのんびり、サンセットにもおすすめです。

    駐車場：なし（路肩）
    エントリー：ビーチ',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 8,
    latitude: 24.89394811817826,
    longitude: 125.27020961585875
  },
  {
    name: '長間浜',
    description: '来間島の隠れビーチ。
    海流が早く、西側に面しているため、サンセットや星空鑑賞にぴったりです。おしゃれなカフェやショップのある来間島で遊んだあと、プライベートビーチのようなここでゆっくりするのがおすすめ。

    駐車場：あり
    エントリー：ビーチ・岩場',
    postal_code: '906-0306',
    address: '沖縄県宮古島市下地字来間４８４−１',
    area_id: 7,
    latitude: 24.72618237838645,
    longitude: 125.23984891266089
  },
  {
    name: 'ゴルフ場裏',
    description: '水深10mの砂地がある隠れスポット

    駐車場：なし（草むらに２台ほど）
    エントリー：ビーチ',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 2,
    latitude: 24.72410002230413,
    longitude: 125.28735272617293
  },
  {
    name: 'ゼロ',
    description: 'スキンダイビング練習中のおすすめスポット。
    透明度が高く、水深もあるので初心者から上級者まで、トレーニングしながら遊べます。

    駐車場：あり
    エントリー：岩場',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.81024482664304,
    longitude: 125.14671965110108
  },
  {
    name: '一ノ瀬',
    description: 'スキンダイビング練習中のおすすめスポット。
    透明度の高い水中洞窟もあるので、トレーニングしながら遊べます。

    駐車場：あり
    エントリー：岩場',
    postal_code: '906-0000',
    address: '沖縄県宮古島市',
    area_id: 5,
    latitude: 24.81024482664304,
    longitude: 125.14671965110108
  },
])

filenames = [
  ['shiratori.jpg', 'shiratori2.jpg'],
  ['saba.jpg', 'saba2.jpg'],
  ['maehama.jpg', 'maehama2.jpg'],
  ['17end.jpg', '17end2.jpg'],
  ['shigira.jpg', 'shigira2.jpg'],
  ['if.jpg', 'if2.jpg'],
  ['nakanoshima.jpg', 'nakanoshima2.jpg'],
  ['musunun.jpg', 'musunun2.jpg'],
  ['noname.jpg', 'noname2.jpg'],
  ['nagama.jpg', 'nagama2.jpg'],
  ['golf-ura.jpg', 'golf-ura2.jpg'],
  ['zero.jpg', 'zero2.jpg'],
  ['ichinose.jpg', 'ichinose2.jpg'],
]
filenames.each.with_index(1) do |(first, second), i|
  spot = Spot.find(i)
  spot.images.attach(io: File.open(Rails.root.join("db/fixtures/#{first}")), filename: "#{first}")
  spot.images.attach(io: File.open(Rails.root.join("db/fixtures/#{second}")), filename: "#{second}")
end

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

comments = Comment.create([
  {content: 'Ryuさんの八重干瀬ツアーに初参加。佐良浜港集合で9-15時コース。船で約30分、4スポットまわってくれました。白砂のイフに着いたら風が止まって波もなくて天国だった。みんな過去一だって言ってた！ウミガメと泳いだり、ドローン撮影してくれた。次も絶対行く！',
  visit_date: '2020-07-21', visit_time: '9:00:00', spot_id: 6, user_id: 1, weather_id: 1, tide_id: 5, wind_id: 6},

  {content: '青の洞窟がとにかくきれい！！小魚多くてちょっと座れる岩場もある。エントリーまでの階段がきつい。帰り（上り）はもっとしんどいです。',
  visit_date: '2020-07-22', visit_time: '9:00:00', spot_id: 2, user_id: 1, weather_id: 1, tide_id: 5, wind_id: 6},

  {content: 'サンセットダイブしました。無風で泳ぎながら見るサンセット最高でしたが、洞窟は暗くて行けませんでした。次はお昼に行きたい。',
  visit_date: '2020-07-22', visit_time: '17:00:00', spot_id: 1, user_id: 1, weather_id: 2, tide_id: 3, wind_id: 6},

  {content: '好きすぎて2日連続行きました！水深7-8mあるから初心者の練習にもいい。サンゴに当たっちゃうから干潮時刻は避けた方がいいです。',
  visit_date: '2020-07-23', visit_time: '10:00:00', spot_id: 2, user_id: 1, weather_id: 1, tide_id: 4, wind_id: 6},

  {content: '絵に描いたような白浜ビーチ。前日はウミガメもいたとか。',
  visit_date: '2020-09-21', visit_time: '11:00:00', spot_id: 3, user_id: 1, weather_id: 2, tide_id: 5, wind_id: 1},

  {content: '風が強かった。ここは泳ぐより、のんびりするのにいいビーチみたい。',
  visit_date: '2020-09-22', visit_time: '11:00:00', spot_id: 8, user_id: 1, weather_id: 2, tide_id: 5, wind_id: 5},

  {content: '島移住した友達に連れて行ってもらった隠れビーチ。沖に15分くらい泳いだところにある水深10mの砂地！！とにかく幻想的でキレイだった！絶対また行く！帰りに寄ったキッチンみほりんの冷やしみやこそば美味しかった〜',
  visit_date: '2020-09-23', visit_time: '11:00:00', spot_id: 11, user_id: 1, weather_id: 1, tide_id: 5, wind_id: 2},

  {content: '池間丸のえなちゃんに案内してもらいました。北風が強くて他のツアーは軒並み欠航の中、酔い止めも飲んで出航したけど、波はそんなに強くなかったです。4スポット回ってくれて、水中写真たくさん撮ってくれた。イフの船上でお弁当食べてたらウミガメが来てくれて急いで飛び込んだの楽しかった〜！宮古島で泳ぐなら、ヤビジツアーは一番おすすめ！',
  visit_date: '2020-09-24', visit_time: '9:00:00', spot_id: 6, user_id: 1, weather_id: 1, tide_id: 5, wind_id: 2},

  {content: 'カマスの大群に会えました！2年に一度くらいのタイミングで出会えるみたい。幻想的だった〜',
  visit_date: '2020-09-25', visit_time: '10:00:00', spot_id: 7, user_id: 1, weather_id: 3, tide_id: 5, wind_id: 6},

  {content: '一日中練習したい場所だった',
  visit_date: '2020-09-26', visit_time: '10:00:00', spot_id: 12, user_id: 1, weather_id: 2, tide_id: 4, wind_id: 6},

  {content: '水深が結構深いのでスキンダイブ練習にすごくいい。中級者以上なら行けそうな洞窟あります。',
  visit_date: '2020-07-23', visit_time: '11:00:00', spot_id: 1, user_id: 2, weather_id: 2, tide_id: 5, wind_id: 6},

  {content: '風のない日はここ最高です。冬のマンタにも会いたい。',
  visit_date: '2020-07-25', visit_time: '8:00:00', spot_id: 1, user_id: 2, weather_id: 1, tide_id: 5, wind_id: 6},

  {content: 'マンタに会えたー！！2枚なかよく泳いでて人生で一番感動しました、、！',
  visit_date: '2021-02-25', visit_time: '8:00:00', spot_id: 1, user_id: 3, weather_id: 1, tide_id: 5, wind_id: 6},
])
