class AddRestrictionsToStatus < ActiveRecord::Migration
  def change
  	change_column :books, :status, :integer, { :default => 0, :null => false }
  end
end
