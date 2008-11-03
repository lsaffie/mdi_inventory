class Owner < ActiveRecord::Base
  has_many :devices
end
