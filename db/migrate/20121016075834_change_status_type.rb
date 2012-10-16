class ChangeStatusType < ActiveRecord::Migration
  def up
  	change_column :books, :status, :integer, { :limit => 1 }
  end

  def down
  	change_column :books, :status, :string
  end
end
