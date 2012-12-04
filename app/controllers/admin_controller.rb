class AdminController < ApplicationController
  before_filter :authorize
  
  def index
    @text_messages_count = TextMessage.count
    @text_messages_verified = TextMessage.order(:created_at).where(:verified => true)
  end
end
