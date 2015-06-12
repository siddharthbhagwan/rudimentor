class AddDefaultRolesMaskToUsers < ActiveRecord::Migration
  def change
  	change_column :users, :roles_mask, :integer, null: :false, default: 2
  end
end
