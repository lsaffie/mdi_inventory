class Purchaser < ActiveRecord::Base
  has_many :devices
end
