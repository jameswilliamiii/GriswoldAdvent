class VerificationsController < ApplicationController
  protect_from_forgery :except => ["create"]
  before_filter :get_user
  
  def create
    @phone_number.update_attribute(:verified, true)
    head :ok
  end
  
  private
  def get_user
    unless @phone_number = TextMessage.find_by_phone_number(params['From'])
      head :not_found
    end
  end
end
