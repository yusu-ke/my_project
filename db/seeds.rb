# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

Monk.create!(
    name: '法然上人 (1133年～1212年)',
    title: "おおらかな心を持つ慈悲型",
    description: 'あなたはおおらかな心を持ち、懐の深さで周囲を包み込む存在です。他人に対して平等で公平に接しようとする姿勢は、多くの人に信頼される要因となっているでしょう。一方で、相手のことを思うあまり、時には厳しく接してしまうこともあるでしょう。しかし、その厳しさは相手のことを思いやるあなたの心の優しさの裏返しです。法然上人はどのような人であっても救済されるべきと考え、徹底した平等を貫きました。その教えは『選択本願念仏集』にも表れており、「南無阿弥陀仏」と称える念仏こそが、人々が救われるための最善の実践であると説きました。煩悩を否定するのではなく、ありのままの人間性を受け入れたその教えは、多くの人に「おおらかさ」として映ったのでしょう。',
    start_score: 43,
    end_score: 48,
    image_path: 'hounen.jpg'
  )

Monk.create!(
  name: '親鸞聖人 (1173年～1262年)',
  title: "ともに悩み、ともに歩む伴走者型",
  description: 'あなたは周りの人の気持ちを深く理解でき、その人の立場に寄り添うことができる人です。困った人を振っておくことができず、支えあうことを大切にしています。しかし一方で、時には自分の感情を抑えすぎてしまうこともあるのかもしれません。しかしあなたのそのような姿勢が、周囲の人々にとってかけがえのない存在になっているのかもしれません。親鸞聖人は、20年間比叡山で修行を積まれたのち、法然上人との出会いを通じて「どのような人であれ救済されるべき」という本願念仏の教えに出会いました。しかし、教えを広める中で様々な反発を受け、新潟県（当時の越後）に流罪となりました。その後も、関東で20年間、懸命に生きる人々とともに暮らし、その教えを説き続けました。また、親鸞聖人は自らも煩悩に悩み、苦しみ続けました。それでも人々と共に悩み、共に生きようとするその姿勢は、多くの人々に共感を与え、親しみを感じさせたのかもしれません。',
  start_score: 37,
  end_score: 42,
  image_path: 'shinran.jpg'
)


Monk.create!(
  name: '一遍上人 (1239年～1289年)',
  title: "みなを導くリ―ダー型",
  description: 'あなたは変化を恐れることなく、様々なアイデアを柔軟に取り入れ状況を改善することことができます。しかし、時には周囲との和を大切にするために一歩引くこともあるのかもしれません。また自分の意志に自信を持ち、一貫した考えに基づいた行動や発言ができます。一遍上人は、彼を慕う多くの信者とともに全国を巡り、念仏の教えを広めました。彼は民衆の中に入り込み、共に歩むことで人々の信頼を築いていきました。その中で、念仏を唱えながら踊る「踊り念仏」を広め、これが各地で熱狂的な支持を得ました。この革新的な方法は、当時の仏教体制に対する挑戦であり、多くの人々を魅了しました。一遍上人の生き様から学べるのは、人々の中に入り、共に実践する姿勢です。彼は「共に歩む」ことで、周囲の人々を力強く導き、同じ目線でともに進んでいくリーダーシップを感じさせます。',
  start_score: 32,
  end_score: 36,
  image_path: 'ippen.jpg'
)


Monk.create!(
  name: '日蓮上人 (1222年～1282年)',
  title: "より良い道を模索する改革型",
  description: 'あなたは現状を深く見つめることができ、問題点を的確に捉える新しい視点を持っています。既存のルールや価値観、常識に囚われず改善の余地があるのならば自ら行動を起こし、変化を引き起こすことができます。また時には、周囲の人の意見にも耳を傾けつつ最適な方法を模索する柔軟性も併せもっています。日蓮上人は、飢饉、天変地異と混迷する時代に生き、より良い社会のために何が必要か模索し続けました。彼は既存の仏教の体制に対し改革的な姿勢を崩さずに、様々な迫害を受けながらもその信念を曲げることなく、布教を続けました。彼が鎌倉幕府に提出した、国の安定と繁栄のための道筋を示した『立正安国論』は有名です。',
  start_score: 26,
  end_score: 31,
  image_path: 'nitiren.jpg'
)


Monk.create!(
  name: '栄西禅師 (1141年～1215年)',
  title: "柔軟な計画を立てる戦略型",
  description: 'あなたは現状を冷静に分析し、最善の結果を得るために計画を立てることに優れています。物事が思わぬ方向進んだとしても、その時の状況に応じて柔軟に対応することができます。長期的な視点を持ちながらも、細かな事にも気を配ることできるため次第と周囲の信頼を集めることも多いでしょう。しかし、一方で決断に時間がかかってしまう場面もあるのかもしれません。栄西禅師は、禅の教えを中国大陸から日本に伝え、日本の仏教界に新たな道を切り開きました。彼は幼き日より仏教の教えを修養し、１０代で比叡山に上り修学に励みます。その後、より深く学ぶため２回にわたり中国（宋）にわたり臨済禅を修めました。また、鎌倉幕府の庇護得るために活動し、禅の普及を目指した姿勢に戦略家としての一面を感じさせます。さらに栄西禅師は禅の修行に役立つとして茶の効用に注目し、中国から茶種を持ち帰り現在の佐賀県吉野ヶ里町の霊仙寺の庭に植えたとされています。彼が広げた茶の文化は今日の日本の茶文化の基礎とされています。',
  start_score: 20,
  end_score: 25,
  image_path: 'eisai.jpg'
)


Monk.create!(
  name: '道元禅師 (1200年～1253年)',
  title: "自分を深く見つめる内省型",
  description: 'あなたは自分の行動や感情を深く掘り下げて考える力があり、物事を慎重に進めることができます。また日常生活や様々な経験から、自己の内面を洞察し、自分自身を成長させることを大切にします。しかしその一方で物事を深く考えすぎてしまい、決断に時間がかかったり、自己評価が厳しくなりがちな一面があるのかもしれません。道元禅師は幼くは比叡山で学び、その後更なる仏法の心理を求め各地の寺院を巡りました。その過程で禅に出会った道元禅師は、さらに深く禅を学ぶため中国（宋）に渡航しました。そこで出会う曹洞宗の如浄禅師の下で只管打座（雑念を捨て、ひたすらに座禅を行うこと）を行い悟りの境地に至りました。その後は帰国し、禅の思想を普及すべく活動を行うも、比叡山から反発を受け弾圧を受けます。この弾圧から逃れるため越前（福井県）へ移り、拠点を構えました。これは現在の永平寺であり道元禅師はこの場所で、座禅により深く自分の内面を見つめ直し、自らの悟りを伝えるため『正法眼蔵』の執筆をはじめました。',
  start_score: 14,
  end_score: 19,
  image_path: 'dougen.jpg'
)



question1 = Question.find_or_create_by!(content: '周りの人の感情に敏感で共感する能力は高いほうだ。')
question2 = Question.find_or_create_by!(content: 'ボランティアなどの関心は高いほうだ。')
question3 = Question.find_or_create_by!(content: 'まわりの人と協力は得意なほうだ。')
question4 = Question.find_or_create_by!(content: '口論になっても相手の話や考えを尊重するほうだ。')
question5 = Question.find_or_create_by!(content: 'まわりに影響をあたえるタイプだ。')
question6 = Question.find_or_create_by!(content: '自分が中心となって物事を進めるこのことに抵抗はない。')
question7 = Question.find_or_create_by!(content: 'ルールや慣習に疑問を持つことが多い。')
question8 = Question.find_or_create_by!(content: '状況の改善には、時にはルールを破ることも必要だ。')
question9 = Question.find_or_create_by!(content: '予想外のことが起こっても臨機応変に対応ができる。')
question10 = Question.find_or_create_by!(content: '旅行をするときはしっかりと計画を立てるほうだ。')
question11 = Question.find_or_create_by!(content: '理論や思想を学ぶことに強い関心がある。')
question12 = Question.find_or_create_by!(content: '知識や技術の追求することに価値を感じる。')

ScoreMapping.create!(question: question1, option: 1, score: 6)
ScoreMapping.create!(question: question1, option: 2, score: 5)
ScoreMapping.create!(question: question1, option: 3, score: 4)
ScoreMapping.create!(question: question1, option: 4, score: 3)
ScoreMapping.create!(question: question1, option: 5, score: 2)

ScoreMapping.create!(question: question2, option: 1, score: 6)
ScoreMapping.create!(question: question2, option: 2, score: 5)
ScoreMapping.create!(question: question2, option: 3, score: 4)
ScoreMapping.create!(question: question2, option: 4, score: 3)
ScoreMapping.create!(question: question2, option: 5, score: 2)

ScoreMapping.create!(question: question3, option: 1, score: 5)
ScoreMapping.create!(question: question3, option: 2, score: 4)
ScoreMapping.create!(question: question3, option: 3, score: 3)
ScoreMapping.create!(question: question3, option: 4, score: 2)
ScoreMapping.create!(question: question3, option: 5, score: 1)

ScoreMapping.create!(question: question4, option: 1, score: 5)
ScoreMapping.create!(question: question4, option: 2, score: 4)
ScoreMapping.create!(question: question4, option: 3, score: 3)
ScoreMapping.create!(question: question4, option: 4, score: 2)
ScoreMapping.create!(question: question4, option: 5, score: 1)

ScoreMapping.create!(question: question5, option: 1, score: 5)
ScoreMapping.create!(question: question5, option: 2, score: 4)
ScoreMapping.create!(question: question5, option: 3, score: 3)
ScoreMapping.create!(question: question5, option: 4, score: 2)
ScoreMapping.create!(question: question5, option: 5, score: 1)

ScoreMapping.create!(question: question6, option: 1, score: 5)
ScoreMapping.create!(question: question6, option: 2, score: 4)
ScoreMapping.create!(question: question6, option: 3, score: 3)
ScoreMapping.create!(question: question6, option: 4, score: 2)
ScoreMapping.create!(question: question6, option: 5, score: 1)

ScoreMapping.create!(question: question7, option: 1, score: 4)
ScoreMapping.create!(question: question7, option: 2, score: 3)
ScoreMapping.create!(question: question7, option: 3, score: 2)
ScoreMapping.create!(question: question7, option: 4, score: 1)
ScoreMapping.create!(question: question7, option: 5, score: 4)

ScoreMapping.create!(question: question8, option: 1, score: 4)
ScoreMapping.create!(question: question8, option: 2, score: 3)
ScoreMapping.create!(question: question8, option: 3, score: 2)
ScoreMapping.create!(question: question8, option: 4, score: 1)
ScoreMapping.create!(question: question8, option: 5, score: 4)

# 戦略家 9問
ScoreMapping.create!(question: question9, option: 1, score: 3)
ScoreMapping.create!(question: question9, option: 2, score: 2)
ScoreMapping.create!(question: question9, option: 3, score: 1)
ScoreMapping.create!(question: question9, option: 4, score: 1)
ScoreMapping.create!(question: question9, option: 5, score: 1)

# 戦略家 10問
ScoreMapping.create!(question: question10, option: 1, score: 3)
ScoreMapping.create!(question: question10, option: 2, score: 2)
ScoreMapping.create!(question: question10, option: 3, score: 1)
ScoreMapping.create!(question: question10, option: 4, score: 1)
ScoreMapping.create!(question: question10, option: 5, score: 1)

#哲学者型 11問
ScoreMapping.create!(question: question11, option: 1, score: 1)
ScoreMapping.create!(question: question11, option: 2, score: 1)
ScoreMapping.create!(question: question11, option: 3, score: 1)
ScoreMapping.create!(question: question11, option: 4, score: 1)
ScoreMapping.create!(question: question11, option: 5, score: 1)

#哲学者型 12問
ScoreMapping.create!(question: question12, option: 1, score: 1)
ScoreMapping.create!(question: question12, option: 2, score: 1)
ScoreMapping.create!(question: question12, option: 3, score: 1)
ScoreMapping.create!(question: question12, option: 4, score: 1)
ScoreMapping.create!(question: question12, option: 5, score: 1)