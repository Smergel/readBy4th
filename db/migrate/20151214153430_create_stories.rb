class CreateStories < ActiveRecord::Migration
  def change
    create_table :stories do |t|
      t.string :picture
      t.string :title
      t.text :description
      t.string :story

      t.timestamps null: false
    end
  end
end
