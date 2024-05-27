class QuestionsController < ApplicationController
  def ask

  end

  def answer
    @user_input = params[:ask].strip
    if (@user_input == 'I am going to work')
      @display = 'Great!'
    elsif(@user_input.include? "?")
      @display = 'Silly question, get dressed and go to work!'
    else
      @display = 'I dont care, get dressed and go to work!'
    end
  end
end
