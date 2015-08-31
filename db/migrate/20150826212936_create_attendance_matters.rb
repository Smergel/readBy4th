class CreateAttendanceMatters < ActiveRecord::Migration
  def change
    create_table :attendance_matters do |t|
      t.integer :absences
      t.boolean :asthma
      t.text    :reason
      t.boolean :excused
      t.integer :asthma_triggers_remediated
      t.integer :participant_id
      t.integer :partner_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
