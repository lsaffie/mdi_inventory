class Maker < ActiveRecord::Base
  has_many :devices
  #has_many :models
  
  validates_presence_of :name
end
