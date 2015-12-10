class CreateEvents < ActiveRecord::Migration
  def change
    create_table :events do |t|
      t.string :title
      t.datetime :date
      t.text :description
      t.integer :partner_id

      t.timestamps null: false
    end
  end
end
