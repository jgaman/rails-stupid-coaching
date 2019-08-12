class QuestionsController < ApplicationController
  QUESTIONS = {
    'I am going to work' => 'great',
    '?' => 'Silly question, get dressed and go to work!'
  }
  # GET /answer?question=what+time+is+it%3F
  def answer
    if params[:question].present?
      if QUESTIONS.key?(params[:question])
        @answer = QUESTIONS[params[:question]]
      else
        @answer = "I don't care, get dressed and go to work!"
      end
    end
  end

  def ask
  end
end
