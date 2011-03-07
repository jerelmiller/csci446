class Game < ActiveRecord::Base
  
  validates_presence_of :name
  
  cattr_reader :per_page
  @@per_page = 10
  
  belongs_to :user
   
end
