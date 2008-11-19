class AddUserToSystem < ActiveRecord::Migration
  def self.up
    User.create(:login => 'lsaffie', :email => 'lsaffie@ehealthinnovation.org', :password => 'foobar', :password_confirmation => 'foobar')
    User.create(:login => 'peter', :email => 'peter.picton@uhn.on.ca', :password => 'foobar', :password_confirmation => 'foobar')
  end

  def self.down
    User.delete(User.find_by_login('lsaffie'))
    User.delete(User.find_by_login('peter'))
  end
end
