class Device < ActiveRecord::Base
  belongs_to :owner
  belongs_to :maker
  belongs_to :model
  belongs_to :study
  belongs_to :type
  
  # has_many :events
  
  has_and_belongs_to_many :pairs
  has_and_belongs_to_many :events
  
  
end
