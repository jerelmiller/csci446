class User < ActiveRecord::Base
  
  acts_as_authentic do |config|
    config.validates_length_of_password_field_options :minimum => 6
    config.validates_length_of_login_field_options :minimum => 6
  end
  
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
