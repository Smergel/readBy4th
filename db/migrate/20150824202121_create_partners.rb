class CreatePartners < ActiveRecord::Migration
  def change
    create_table :partners do |t|
      t.string :name
      t.string :address
      t.integer :zip_code
      t.string :website
      t.string :email
      t.datetime :program_start
      t.datetime :program_end
      t.attachment :logo
      t.integer :phone

      t.timestamps null: false
    end
  end
end
