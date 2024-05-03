class QuestionsController < ApplicationController
  def ask
    @ask = params[:ask]
  end

  def answer
    if params[:ask] == "I am going to work"
      @answers = "Great !"
    elsif params[:ask].include?("?")
      @answers = "Silly question, get dressed and go to work!"
    else
      @answers = "I don't care, get dressed and go to work!"
    end
  end
end

# if your_message == STOP_MESSAGE || your_message == STOP_MESSAGE.upcase
#   ""
# elsif your_message.end_with?("?")
#   "Silly question, get dressed and go to work!"
# else
#   "I don't care, get dressed and go to work!"
# end
