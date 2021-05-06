module ApplicationHelper
  def default_meta_tags
    {
      site: 'skindive-miyako',
      title: '宮古ブルー',
      reverse: true,
      charset: 'utf-8',
      description: '宮古島の今日一のスポットで泳ぎたい人のためのサイト「宮古ブルー」は、宮古諸島のスキンダイビングスポットを掲載中。口コミや地形から検索でき、ログも付けられます！知っているスポットはありますか？',
      keywords: 'diving, okinawa, ダイビング, 沖縄, 宮古島',
      canonical: request.original_url,
      separator: '|',
      icon: [
        { href: image_url('favicon.ico') },
        { href: image_url('icon.jpg'), rel: 'apple-touch-icon', sizes: '180x180', type: 'image/jpg' },
      ],
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: 'https://res.cloudinary.com/du0xq3uls/image/upload/v1620049406/top_gpqs2g.jpg',
        locale: 'ja_JP',
      },
      twitter: {
        card: 'summary',
        site: '@ayalikesweb',
      }
    }
  end

  def twitter_text
    @title = "宮古ブルー"
    if @spot
      text_spot = "宮古島で潜るなら「#{@title}」でスポットを探そう｜スキンダイビングスポット「#{@spot.name}」を知っていますか？"
    else
      text = "宮古島のスキンダイビングスポットを探すなら「#{@title}」"
    end
  end

  def twitter_hashtags
    hashtags = "宮古島,スキンダイビング"
  end
end
