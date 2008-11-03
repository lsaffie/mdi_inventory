class Search < ActiveRecord::Base
  
  def self.search(labelname,model,maker)
    Device.find(:all, :conditions => ['label_name LIKE ? and model_id = ? and maker_id = ?', '%'+labelname+'%', model, maker])
  end
end
