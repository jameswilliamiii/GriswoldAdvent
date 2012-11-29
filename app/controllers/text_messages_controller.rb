class TextMessagesController < ApplicationController
  
  def create
    text_message = TextMessage.new params[:text_message]
    if text_message.save
      redirect_to root_path, notice: 'You will now receive daily texts.'
    else
      redirect_to root_path, alert: 'Something went wrong. Please make sure you are entering a valid 10 digit phone number.'
    end
  end

end