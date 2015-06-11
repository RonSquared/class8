class ChangeTableName < ActiveRecord::Migration
  def change
  	rename_table :uses, :users
  end
end
