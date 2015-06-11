class UpdateColumns < ActiveRecord::Migration
  def change
  	remove_column :books, :ISBN, :text
  	remove_column :books, :author, :text
  	add_column :books, :first_name, :text
  	add_column :books, :last_name, :text
  end
end
