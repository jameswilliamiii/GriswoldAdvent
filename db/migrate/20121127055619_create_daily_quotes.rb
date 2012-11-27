class CreateDailyQuotes < ActiveRecord::Migration
  def change
    create_table :daily_quotes do |t|
      t.date :show_date
      t.text :quote

      t.timestamps
    end
  end
end
