class PersonalityTestsController < ApplicationController
  def new
    @questions = Question.order(:id)
    @personality_test = PersonalityTest.new
  end
end