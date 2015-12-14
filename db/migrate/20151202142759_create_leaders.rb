class CreateLeaders < ActiveRecord::Migration
  def change
    create_table :leaders do |t|
      t.string :fname
      t.string :lname
      t.string :address
      t.integer :zip_code
      t.string :phone
      t.attachment :logo

      t.timestamps null: false
    end
  end
end
