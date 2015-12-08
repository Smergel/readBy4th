class CreateParents < ActiveRecord::Migration
  def change
    create_table :parents do |t|
      t.string :parent_first_name
      t.string :parent_last_name
      t.string :home_address
      t.integer :zip_code

      t.timestamps null: false
    end
  end
end
