class QuestionsController < ApplicationController

  def ask
  end

  def answer
    @ask = params[:ask] || "..."
      if @ask == "I am going to work"
        @resp = "Great!"
      elsif @ask.include? "?"
        @resp = "Silly question, get dressed and go to work!"
      else
        @resp = "I don't care, get dressed and go to work!"
      end
  end
end
