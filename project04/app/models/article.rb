class Article < ActiveRecord::Base
	validates_presence_of :title, :author, :body
	validates_uniqueness_of :title
	
	def initialize_edits
		@articles.edits = 1
	end
	
	def update_edits_count
		@articles.edits + 1
	end
end
