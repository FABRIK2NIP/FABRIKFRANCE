class User < ActiveRecord::Base


  has_many :prints

  has_secure_password

  def owner?
    self.role == 'owner'
  end


end
