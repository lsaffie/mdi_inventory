class RatePlan < ActiveRecord::Base
  has_many :devices
  
  validates_presence_of :name
end
