class CreateTexts < ActiveRecord::Migration
  def change
    create_table :text_messages do |t|
      t.integer :phone_number

      t.timestamps
    end
  end
end
