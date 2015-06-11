class CreateUses < ActiveRecord::Migration
  def change
    create_table :uses do |t|
      t.text :username
      t.text :password

      t.timestamps
    end
  end
end
