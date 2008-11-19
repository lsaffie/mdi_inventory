class Model < ActiveRecord::Base
  #belongs_to :maker
  has_many :devices
  
  validates_presence_of :name
end
