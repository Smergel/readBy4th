class CreateAttendanceMatters < ActiveRecord::Migration
  def change
    create_table :attendance_matters do |t|

      t.timestamps null: false
    end
  end
end
