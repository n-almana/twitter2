class RemoveNotNullFromName < ActiveRecord::Migration
  def change
  	remove_column(:users, :name, :string)
  	add_column(:users, :name, :string)
  end
end
