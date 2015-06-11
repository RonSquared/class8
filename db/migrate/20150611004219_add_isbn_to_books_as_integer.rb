class AddIsbnToBooksAsInteger < ActiveRecord::Migration
  def change
  	change_column :books, :ISBN, :integer
  end
end
