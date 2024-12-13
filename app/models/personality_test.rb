class PersonalityTest
  include ActiveModel::Model
  attr_accessor :answers

  def calculate_score
    score = 0
    questions = Question.all
    questions.each do |question|
      answer = answers[question.id.to_s]
      if answer
        score_mapping = question.score_mappings.find_by(option: answer.to_i)
        score += score_mapping.score if score_mapping
      end
    end
    score
  end

  def get_result
    total_score = calculate_score
    Monk.find_by("start_score <= ? AND end_score >= ?", total_score, total_score)
  end
end
