class ModifyPhoneNumberInTextMessage < ActiveRecord::Migration
  def up
    change_column :text_messages, :phone_number, :string
  end

  def down
    change_column :text_messages, :phone_number, :integer
  end
end
