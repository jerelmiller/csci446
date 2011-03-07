class User < ActiveRecord::Base
  acts_as_authentic
  
  belongs_to :role
  has_many :games
  
  def role_symbols
    return [role.name.downcase.to_sym]
  end
end
