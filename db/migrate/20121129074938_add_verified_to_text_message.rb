class AddVerifiedToTextMessage < ActiveRecord::Migration
  def change
    add_column :text_messages, :verified, :boolean
  end
end
