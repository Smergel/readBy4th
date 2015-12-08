class CreateParticipants < ActiveRecord::Migration
  def change
    create_table :participants do |t|
      t.integer :parent_id
      t.string :first_name
      t.string :last_name
      t.date :date_of_birth
      t.string :school

      t.timestamps null: false
    end
  end
end
