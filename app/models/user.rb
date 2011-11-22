class User < ActiveRecord::Base
  has_secure_password
  validates_presence_of :password, :on => :create
  validates_uniqueness_of :email
  #attr_accessible :first_name, :last_name, :email
  befoer_create { generate_token(:auth_token) }
  
  def generate_token(column)
    begin
      self[column] = SecureRandom.urlsafe_base64
    end while User.exists?(column => self[column])
  end
      
  def role?(r)
  
    role == r.to_s
  end
  
   ROLES = %w[Admin Author User]

end