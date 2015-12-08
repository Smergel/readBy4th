class CreateReadings < ActiveRecord::Migration
  def change
    create_table :readings do |t|
      t.integer :participant_id
      t.integer :hours_individual
      t.integer :hours_instruction
      t.integer :books
      t.string :book_title

      t.timestamps null: false
    end
  end
end
