class AddRolesMaskToUser < ActiveRecord::Migration
  def up
  	add_column :users, :roles_mask, :integer
  end

  def down
  	remove_column :users, :roles_mask
  end
end
