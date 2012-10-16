class RenameColumn < ActiveRecord::Migration
  def up
  	rename_column :books, :state, :status
  end

  def down
  	rename_column :books, :status, :state
  end
end
