class CreateRudiments < ActiveRecord::Migration
  def change
    create_table :rudiments do |t|
      t.integer :number
      t.string :name
      t.string :yt
      t.string :sheet

      t.timestamps null: false
    end
  end
end
