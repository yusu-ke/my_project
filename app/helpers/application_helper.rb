module ApplicationHelper
  def default_meta_tags
    {
      site: '名僧マッチ',
      title: '名僧マッチ：あなたに合う名僧を選ぶ診断サービス',
      reverse: true,
      charset: 'utf-8',
      description: '簡単診断であなたにぴったりな歴史的な名僧に出会うことができます。',
      keywords: '仏教,性格診断,歴史',
      canonical: request.original_url,
      separator: '|',
      og: {
        site_name: :site,
        title: :title,
        description: :description,
        type: 'website',
        url: request.original_url,
        image: image_url('ogp.png'),
        local: 'ja-JP'
      },
      # Twitter用の設定を個別で設定する
      twitter: {
        card: 'summary_image',
        site: '@',
        image: image_url('ogp.png')
      }
    }
  end
end