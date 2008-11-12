class Search < ActiveRecord::Base
  
  def self.search_label(labelname)
    Device.find(:all, :conditions => ['label_name LIKE ?', '%'+labelname+'%'])
  end
  
  def self.search(model,maker)
    Device.find(:all, :conditions => ['model_id = ? and maker_id = ?', model, maker])
  end
end
