class CreateProfiles < ActiveRecord::Migration
  def change
    create_table :profiles do |t|
      t.integer :user_id
      t.string :first_name
      t.string :last_name
      t.string :position
      t.boolean :admin
      t.attachment :picture
      t.integer :phone
      t.string :user_email

      t.timestamps null: false
    end
  end
end
