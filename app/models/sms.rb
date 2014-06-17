class Sms < ActiveRecord::Base
  validates_uniqueness_of :phone_number
end
