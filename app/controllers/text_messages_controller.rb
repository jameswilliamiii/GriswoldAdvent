class TextMessagesController < ApplicationController
  
  around_filter :catch_twilio_error
  
  
  def create
    text_message = TextMessage.new params[:text_message]
    if text_message.save
      client = Twilio::REST::Client.new(ENV['TWILIO_SID'], ENV['TWILO_TOKEN'])
      client.account.sms.messages.create(
        from: ENV['TWILO_FROM'],
        to: text_message.phone_number,
        body: "Thanks for signing up for Griswold Advent daily texts through Dec 25. To verify your account, please reply CLARK to this message."
        )
        redirect_to root_path, notice: 'Thank you! You will receive an SMS shortly with verification instructions.'
    else
      redirect_to root_path, alert: 'Something went wrong. Please make sure you are entering a valid 10 digit phone number.'
    end
  end
  
  def catch_twilio_error
    yield
    rescue Twilio::REST::RequestError
      redirect_to root_path, alert: "You may have signed up and stopped our service previously.  Please text START to (779) 545-2621"
  end

end