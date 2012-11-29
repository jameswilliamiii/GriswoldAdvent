class VerificationsController < ApplicationController
  # protect_from_forgery :except => ["create"]
  before_filter :get_user
  
  def create
    @phone_number.update_attributes(:verified => true)
    head :ok
  end
  
  private
  def get_user
    number_from_twilio = params['From']
    cleaned_number = number_from_twilio.gsub(/\D/, "")
    if cleaned_number.start_with? '1'
      cleaned_number[0] = ''
      return cleaned_number
    end
    logger.info "*** #{cleaned_number} ***"
    unless @phone_number = TextMessage.find_by_phone_number(cleaned_number)
      head :not_found
    end
  end

end
