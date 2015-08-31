class CreateFamilyEngagements < ActiveRecord::Migration
  def change
    create_table :family_engagements do |t|
      t.integer :tweets
      t.integer :facebook
      t.integer :instagram
      t.integer :community_centers
      t.integer :public_speech
      t.integer :partner_id
      t.integer :user_id

      t.timestamps null: false
    end
  end
end
