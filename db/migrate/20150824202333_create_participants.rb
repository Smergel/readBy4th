class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :partner_id
      t.string :first_name
      t.string :last_name
      t.integer :absence
      t.string :email
      t.date :date_of_birth
      t.string :home_address
      t.string :school
      t.string :parent_name
      t.boolean :student

      t.timestamps null: false
    end
  end
end
