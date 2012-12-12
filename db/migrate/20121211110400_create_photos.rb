class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.string :name
      t.integer :useri_id

      t.timestamps
    end
    add_attachment :photos, :attachment
  end
end
