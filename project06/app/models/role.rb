class Role < ActiveRecord::Base
  
  has_many :users
  
  cattr_reader :per_page
  @@per_page = 10
end
