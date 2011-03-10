class User < ActiveRecord::Base
  acts_as_authentic
  
  belongs_to :role
  has_many :games
  
  has_attached_file :photo,
                    :url => '/assets/:class/:attachment/:id/:style/:filename'
  
  cattr_reader :per_page
  @@per_page = 10
  
  def role_symbols
    return [role.name.downcase.to_sym]
  end
  
end
