class TextMessagesController < ApplicationController
  
  def create
    text_message = TextMessage.new params[:text_message]
    if text_message.save
      redirect_to root_path, notice: 'You will now receive daily texts.'
    else
      redirect_to root_path, alert: 'Something went wrong. Please try again.'
    end
  end

end