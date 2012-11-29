class VerificationsController < ApplicationController
  protect_from_forgery :except => ["create"]
  
  def create
    number_from_twilio = params['From']
    cleaned_number = number_from_twilio.gsub(/\D/, "")
    if cleaned_number.start_with? '1'
      cleaned_number[0] = ''
    end
    logger.debug "*** #{cleaned_number} ***"
    @phone_number = TextMessage.find_by_phone_number(cleaned_number)
    @phone_number.update_attributes(:verified => true)
  end

end
