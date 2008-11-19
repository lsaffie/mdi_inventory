class Device < ActiveRecord::Base
  belongs_to :owner
  belongs_to :maker
  belongs_to :model
  belongs_to :study
  belongs_to :type
  belongs_to :purchaser
  belongs_to :carrier
  belongs_to :rate_plan
  
  # has_many :events
  
  has_and_belongs_to_many :pairs
  has_and_belongs_to_many :events
  
  validates_presence_of :label_name
  validates_presence_of :serial_number
  
  
end
