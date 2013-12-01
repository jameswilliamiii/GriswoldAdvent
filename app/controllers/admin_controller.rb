class AdminController < ApplicationController
  before_filter :authorize

  def index
    @text_messages = TextMessage.order(:created_at)
  end
end
