class AdminController < ApplicationController
  before_filter :authorize
  
  def index
    @text_messages = TextMessage.all
    @text_messages_verified = TextMessage.where :verified => true
  end
end
