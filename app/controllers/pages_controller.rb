class PagesController < ApplicationController
  def ask
  end

  def answer
    @message = params[:question]
    case
    when @message == "I am going to work"
      @answer = "Great!"
    when @message.include?("?")
      @answer = "Silly question, get dressed and go to work!"
    else
      @answer = "I don't care, get dressed and go to work!"
    end
  end
end
