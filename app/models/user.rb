class User < ActiveRecord::Base
  has_secure_password

 validates_uniqueness_of :email
 #attr_accessible :first_name, :last_name, :email
end