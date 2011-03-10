class DropColumnFromRoles < ActiveRecord::Migration
  def self.up
    remove_column :roles, :title
    remove_column :roles, :name
    add_column :roles, :name, :string
  end

  def self.down
    remove_column :roles, :name
    add_column :roles, :title, :string
    add_column :roles, :name, :string
  end
end
