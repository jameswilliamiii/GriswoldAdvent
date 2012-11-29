class TextMessage < ActiveRecord::Base
  attr_accessible :phone_number
  
  before_validation :clean_number
  validates :phone_number, :presence => true
  
  
  def clean_number
    self.phone_number = self.phone_number.gsub(/\D/, "").to_i if phone_number.is_a?(String)
  end
  
end
