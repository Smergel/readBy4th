class CreateDocuments < ActiveRecord::Migration
  def change
    create_table :documents do |t|
      t.integer :partner_id
      t.attachment :doc

      t.timestamps null: false
    end
  end
end
