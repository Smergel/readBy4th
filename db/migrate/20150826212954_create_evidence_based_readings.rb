class CreateEvidenceBasedReadings < ActiveRecord::Migration
  def change
    create_table :evidence_based_readings do |t|

      t.timestamps null: false
    end
  end
end
