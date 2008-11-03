class Model < ActiveRecord::Base
  #belongs_to :maker
  has_many :devices
end
