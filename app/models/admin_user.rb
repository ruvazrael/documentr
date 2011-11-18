class User < ActiveRecord::Base
  has_secure_password
  
  validates_presence_of :password, :on => :create
 validates_uniqueness_of :email
 #attr_accessible :first_name, :last_name, :email
 

   ROLES = %w[admin ]

   
end