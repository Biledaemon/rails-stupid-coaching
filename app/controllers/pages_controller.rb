class PagesController < ApplicationController
  def home

  end

  def contact
    @contacts = %w[Bob Sheila Hank Eric]
    if params[:contact_name].present?
      @contacts = @contacts.select do |name|
        name.downcase == params[:contact_name].downcase
      end
    end
  end

  def about
    @today_date = Date.today.strftime('%d %b')
  end

  def answer
    answer1 = "I don't care, get dressed and go to work!"
    answer2 = 'Silly question, get dressed and go to work!'
    answer3 = 'Great!'
    # create a loop
    # ask a question
    # if the question does not end with a ? then state @answer1
    # if the question ends with a ? then state answer2
    # if the question = "I am going to work" then reply answer3
    # end the loop
    dumb_question = params[:question]
    if dumb_question.present?
      if dumb_question.downcase == 'i am going to work right now!'
        @answer = answer3
      elsif dumb_question.include? '?'
        @answer = answer2
      else
        @answer = answer1
      end
    end
  end

  def ask
  end
end
