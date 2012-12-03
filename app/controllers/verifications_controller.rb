class VerificationsController < ApplicationController
  
  def incoming_text
    number_from_twilio = params['From']
    message_from_twilio = params['Body']
    cleaned_number = number_from_twilio.gsub(/\D/, "")
    if message_from_twilio.downcase == 'stop'
      phone_number = TextMessage.find_by_phone_number(cleaned_number)
      phone_number.destroy
      head :ok
    else
      phone_number = TextMessage.find_by_phone_number(cleaned_number)
      if phone_number.present?
        phone_number.verified = true
        phone_number.save
        head :ok
      else
        text_message = TextMessage.new
        text_message.phone_number = cleaned_number
        text_message.verified = true
        text_message.save
        head :ok
      end
      twiml = Twilio::TwiML::Response.new do |r|
        r.Sms "Thanks for verifying your account.  You can send STOP to this number to be removed at any time."
      end
      twiml.text
      # respond_to do |format|
      #         format.xml {render 'process_sms.xml.erb', :content_type => 'text/xml'}
      end
    end
  end
end
