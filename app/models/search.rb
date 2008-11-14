class Search < ActiveRecord::Base
  
  def self.search_label(labelname)
    Device.find(:all, :conditions => ['label_name LIKE ?', '%'+labelname+'%'], :order => :label_name)
  end
  
  def self.search_serial(serial)
    Device.find(:all, :conditions => ['serial_number LIKE ?', '%'+serial+'%'], :order => :label_name)
  end
  
  def self.search_phone(phone)
    Device.find(:all, :conditions => ['phone_number LIKE ?', '%'+phone+'%'], :order => :label_name)
  end
  
  def self.search(model,maker)
    Device.find(:all, :conditions => ['model_id = ? and maker_id = ?', model, maker], :order => :label_name)
  end
end
