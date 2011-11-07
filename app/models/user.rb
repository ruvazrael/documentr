class User < ActiveRecord::Base
  
 validates_presence_of :email, :password_digest, :on => :create
 validates_uniqueness_of :email
 attr_accessible :first_name, :last_name, :email
end