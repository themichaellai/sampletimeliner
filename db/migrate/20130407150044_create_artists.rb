class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name
      t.text :bio
      t.string :slug

      t.timestamps
    end
    add_index :artists, :slug, unique: true
  end
end
