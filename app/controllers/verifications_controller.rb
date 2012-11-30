class VerificationsController < ApplicationController
  # protect_from_forgery :except => ["create"]
  before_filter :get_user
  
  def create
    @phone_number.verified = true
    @phone_number.save
    head :ok
  end
  
  def destroy
    @phone_number.destroy
  end
  
  private
  def get_user
    number_from_twilio = params['From']
    message_from_twilio = params['Body']
    cleaned_number = number_from_twilio.gsub(/\D/, "")
    @phone_number = TextMessage.find_by_phone_number(cleaned_number)
    @phone_number.destroy if message_from_twilio.downcase == 'stop'
  end
end
