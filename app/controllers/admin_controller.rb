class AdminController < ApplicationController
  before_filter :authorize
  
  def index
    @text_messages_count = TextMessage.count
    @text_messages_verified = TextMessage.where(:verified => true).order(:created_at)
  end
end
