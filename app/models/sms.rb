class Sms < ActiveRecord::Base
  validates_presence_of :phone_number
  validates_uniqueness_of :phone_number
end
