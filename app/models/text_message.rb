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
  
end
