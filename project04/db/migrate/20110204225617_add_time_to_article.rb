class AddTimeToArticle < ActiveRecord::Migration
  def self.up
    add_column :articles, :time, :string
  end

  def self.down
    remove_column :articles, :time
  end
end
