class CreatePhotos < ActiveRecord::Migration
  def change
    create_table :photos do |t|
      t.integer :partner_id
      t.attachment :photo

      t.timestamps null: false
    end
  end
end
