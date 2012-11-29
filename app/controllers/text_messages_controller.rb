class TextMessagesController < ApplicationController
  
  def create
    text_message = TextMessage.new params[:text_message]
    if text_message.save
      client = Twilio::REST::Client.new(ENV['TWILIO_SID'], ENV['TWILO_TOKEN'])
      client.account.sms.messages.create(
        from: ENV['TWILO_FROM'],
        to: text_message.phone_number,
        body: "Thanks for signing up. To verify your account, please reply HELLO to this message."
        )
        redirect_to root_path, notice: 'Thank you! You will receive an SMS shortly with verification instructions.'
    else
      redirect_to root_path, alert: 'Something went wrong. Please make sure you are entering a valid 10 digit phone number.'
    end
  end

end