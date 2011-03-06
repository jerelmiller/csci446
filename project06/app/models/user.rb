class User < ActiveRecord::Base
  acts_as_authentic
  
  belongs_to :role
  
  def role_symbols
    [role.name.downcase.to_sym]
  end
  
end
