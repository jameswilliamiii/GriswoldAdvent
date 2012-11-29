class VerificationsController < ApplicationController
  protect_from_forgery :except => ["create"]
  
  def create
    @phone_number = TextMessage.find_by_phone_number(params['From'])
    @phone_number.update_attribute(:verified, true)
    head :ok
  end

end
