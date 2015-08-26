class CreatePosts < ActiveRecord::Migration
  def change
    create_table :posts do |t|
      t.integer :user_id
      t.integer :partner_id
      t.integer :post_type
      t.string :post_description
      t.attachment :post_attachment
      t.integer :attendance
      t.integer :absence
      t.string :absence_reason
      t.integer :books_distributed
      t.string :asthma_remediation
      t.integer :hours_spent_reading
      t.integer :books_read

      t.timestamps null: false
    end
  end
end
