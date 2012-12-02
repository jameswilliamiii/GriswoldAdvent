class DailyQuote < ActiveRecord::Base
  attr_accessible :quote, :show_date
  
  def self.add_short_link
    quotes = DailyQuote.all
    short_links = [
                  { :id => 26, :short_link => "http://goo.gl/nNfLH" },
                  { :id => 27, :short_link => "http://goo.gl/arjWE" },
                  { :id => 28, :short_link => "http://goo.gl/M3A0C" },
                  { :id => 29, :short_link => "http://goo.gl/iv1mE" },
                  { :id => 30, :short_link => "http://goo.gl/fzjdU" },
                  { :id => 31, :short_link => "http://goo.gl/8zgM4" },
                  { :id => 32, :short_link => "http://goo.gl/YXfqr" },
                  { :id => 33, :short_link => "http://goo.gl/kNNQ0" },
                  { :id => 34, :short_link => "http://goo.gl/H1Yzy" },
                  { :id => 35, :short_link => "http://goo.gl/oWbvg" },
                  { :id => 36, :short_link => "http://goo.gl/57aDi" },
                  { :id => 37, :short_link => "http://goo.gl/sLih3" },
                  { :id => 38, :short_link => "http://goo.gl/P7mNP" },
                  { :id => 39, :short_link => "http://goo.gl/P3FDF" },
                  { :id => 40, :short_link => "http://goo.gl/PyYe3" },
                  { :id => 41, :short_link => "http://goo.gl/xhhSj" },
                  { :id => 42, :short_link => "http://goo.gl/FxxPT" },
                  { :id => 43, :short_link => "http://goo.gl/UQlqY" },
                  { :id => 44, :short_link => "http://goo.gl/RvMKn" },
                  { :id => 45, :short_link => "http://goo.gl/VdxD9" },
                  { :id => 46, :short_link => "http://goo.gl/4CQ1s" },
                  { :id => 47, :short_link => "http://goo.gl/ep1Wc" },
                  { :id => 48, :short_link => "http://goo.gl/CD9TA" },
                  { :id => 49, :short_link => "http://goo.gl/uhTr1" },
                  { :id => 50, :short_link => "http://goo.gl/cIZRG" }
                  ]
    quotes.each_with_index do |quote, i|
      quote.short_link = short_links[i][:short_link].html_safe
      quote.save
    end
  end
  
  def self.daily_tweet
    month = Date.today.month
    day = Date.today.day
    if month == 12 && (1..25).include?(day)
      daily_quote = DailyQuote.find_by_show_date(day)
      clean_quote = Sanitize.clean(daily_quote.quote)
      clean_quote = clean_quote.slice(0..119) + "..." if clean_quote.length > 119
      Twitter.update "#{clean_quote} #{daily_quote.short_link}"
    end
  end
  
end
