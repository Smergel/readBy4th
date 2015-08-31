class CreateYearRoundReaders < ActiveRecord::Migration
  def change
    create_table :year_round_readers do |t|
      t.integer :hours_read
      t.integer :books_read
      t.integer :hours_read_to
      t.integer :books_loaned
      t.integer :partner_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
