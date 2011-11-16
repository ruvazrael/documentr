class User < ActiveRecord::Base
  has_secure_password
  load_and_authorize_resource
  validates_presence_of :password, :on => :create
 validates_uniqueness_of :email
 #attr_accessible :first_name, :last_name, :email
 

   ROLES = %w[admin moderator author editor]

   def roles=(roles)
     self.roles_mask = (roles & ROLES).map { |r| 2**ROLES.index(r) }.sum
   end

   def roles
     ROLES.reject { |r| ((roles_mask || 0) & 2**ROLES.index(r)).zero? }
   end

   def role?(role)
     roles.include? role.to_s
   end
end