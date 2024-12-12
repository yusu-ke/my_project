# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end
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

ScoreMapping.find_or_create_by!(question: question1, option: 1, score: 6)
ScoreMapping.find_or_create_by!(question: question1, option: 2, score: 5)
ScoreMapping.find_or_create_by!(question: question1, option: 3, score: 4)
ScoreMapping.find_or_create_by!(question: question1, option: 4, score: 3)
ScoreMapping.find_or_create_by!(question: question1, option: 5, score: 2)

ScoreMapping.find_or_create_by!(question: question2, option: 1, score: 6)
ScoreMapping.find_or_create_by!(question: question2, option: 2, score: 5)
ScoreMapping.find_or_create_by!(question: question2, option: 3, score: 4)
ScoreMapping.find_or_create_by!(question: question2, option: 4, score: 3)
ScoreMapping.find_or_create_by!(question: question2, option: 5, score: 2)

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
ScoreMapping.create!(question: question7, option: 5, score: 0)

ScoreMapping.create!(question: question8, option: 1, score: 4)
ScoreMapping.create!(question: question8, option: 2, score: 3)
ScoreMapping.create!(question: question8, option: 3, score: 2)
ScoreMapping.create!(question: question8, option: 4, score: 1)
ScoreMapping.create!(question: question8, option: 5, score: 0)

# 戦略家 9問
ScoreMapping.create!(question: question9, option: 1, score: 3)
ScoreMapping.create!(question: question9, option: 2, score: 2)
ScoreMapping.create!(question: question9, option: 3, score: 1)
ScoreMapping.create!(question: question9, option: 4, score: 1)
ScoreMapping.create!(question: question9, option: 5, score: 0)

# 戦略家 10問
ScoreMapping.create!(question: question10, option: 1, score: 3)
ScoreMapping.create!(question: question10, option: 2, score: 2)
ScoreMapping.create!(question: question10, option: 3, score: 1)
ScoreMapping.create!(question: question10, option: 4, score: 1)
ScoreMapping.create!(question: question10, option: 5, score: 0)

#哲学者型 11問
ScoreMapping.create!(question: question11, option: 1, score: 2)
ScoreMapping.create!(question: question11, option: 2, score: 1)
ScoreMapping.create!(question: question11, option: 3, score: 1)
ScoreMapping.create!(question: question11, option: 4, score: 0)
ScoreMapping.create!(question: question11, option: 5, score: 0)

#哲学者型 12問
ScoreMapping.create!(question: question12, option: 1, score: 2)
ScoreMapping.create!(question: question12, option: 2, score: 1)
ScoreMapping.create!(question: question12, option: 3, score: 1)
ScoreMapping.create!(question: question12, option: 4, score: 0)
ScoreMapping.create!(question: question12, option: 5, score: 0)