class Role < ActiveRecord::Base
  
  has_many :users
  
  validates_presence_of :name
  
  cattr_reader :per_page
  @@per_page = 10
end
