class AddIsbnToBooks < ActiveRecord::Migration
  def change
  	add_column :books, :ISBN, :text
  end
end
