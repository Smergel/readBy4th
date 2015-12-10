class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.integer :partner_id
      t.integer :parent_id
      t.integer :leader_id

      t.timestamps null: false
    end
  end
end
