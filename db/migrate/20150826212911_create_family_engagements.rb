class CreateFamilyEngagements < ActiveRecord::Migration
  def change
    create_table :family_engagements do |t|

      t.timestamps null: false
    end
  end
end
