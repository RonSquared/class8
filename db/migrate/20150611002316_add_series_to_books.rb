class AddSeriesToBooks < ActiveRecord::Migration
  def change
      add_column :books, :series, :text 
  end
end
