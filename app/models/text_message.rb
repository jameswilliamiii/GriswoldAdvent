class TextMessage < ActiveRecord::Base
  attr_accessible :phone_number
  
  before_validation :clean_number
  validates :phone_number, :presence => true, :length => { :minimum => 10 }, :uniqueness => true
  
  
  def clean_number
    self.phone_number = self.phone_number.gsub(/\D/, "") if phone_number.is_a?(String)
    if self.phone_number.start_with? '1'
      self.phone_number
    else
      self.phone_number = "1#{self.phone_number}"
    end
  end
  
  def self.daily_texts
    if Date.today.month == 11 && Date.today.day == 29
      users = TextMessage.where :verified => true
      daily_quote = DailyQuote.find_by_show_date 1
      clean_quote = Sanitize.clean(daily_quote.quote)
      if clean_quote.length > 77
        clean_quote = clean_quote.slice(0..74) + "..."
      users.each do |user|
        client = Twilio::REST::Client.new(ENV['TWILIO_SID'], ENV['TWILO_TOKEN'])
        client.account.sms.messages.create(
          from: ENV['TWILO_FROM'],
          to: user.phone_number,
          body: "#{clean_quote.slice(0..77)} http://griswoldadvent.com/daily_quotes/#{daily_quote.id} - To STOP to discontinue.".html_safe
          )
      end
    end
  end
end
http://bit.ly/U5Gs6E
