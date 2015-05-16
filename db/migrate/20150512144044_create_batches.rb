class CreateBatches < ActiveRecord::Migration
  def change
    create_table :batches do |t|
      t.integer :user_id
      t.string :rudiment_number
      t.integer :ability_bpm
      t.string :ability_beat
      t.integer :endurance_bpm
      t.string :endurance_beat

      t.timestamps null: false
    end
  end
end
