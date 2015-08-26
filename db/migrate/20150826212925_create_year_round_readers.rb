class CreateYearRoundReaders < ActiveRecord::Migration
  def change
    create_table :year_round_readers do |t|

      t.timestamps null: false
    end
  end
end
