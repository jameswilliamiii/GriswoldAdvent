class AddShortLinkToDailyQuote < ActiveRecord::Migration
  def change
    add_column :daily_quotes, :short_link, :string
  end
end
