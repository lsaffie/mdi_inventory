class Device < ActiveRecord::Base
  belongs_to :owner
  belongs_to :maker
  belongs_to :model
  belongs_to :study
  belongs_to :type
  
  has_many :events
  
  has_and_belongs_to_many :pairs
  
  def create_tickets() 

  
  end
  
end
