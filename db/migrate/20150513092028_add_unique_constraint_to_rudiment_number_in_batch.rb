class AddUniqueConstraintToRudimentNumberInBatch < ActiveRecord::Migration
  def change
  	add_index :batches, :rudiment_number, unique: :true
  end
end
