class RemoveIndexOnUnique < ActiveRecord::Migration
  def change
  	remove_index :batches, :rudiment_number
  end
end
