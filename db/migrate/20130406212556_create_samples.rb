class CreateSamples < ActiveRecord::Migration
  def change
    create_table :samples do |t|
      t.string :name
      t.string :artist
      t.string :youtube_id
      t.integer :song_id
      t.integer :second_offset

      t.timestamps
    end
  end
end
