class CreateEvidenceBasedReadings < ActiveRecord::Migration
  def change
    create_table :evidence_based_readings do |t|
      t.integer :teachers
      t.integer :administrators
      t.string  :school
      t.integer :school_id

      t.timestamps null: false
    end
  end
end
