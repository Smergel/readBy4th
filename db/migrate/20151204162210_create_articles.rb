class CreateArticles < ActiveRecord::Migration
  def change
    create_table :articles do |t|
      t.string :title
      t.string :link_to_article
      t.string :link_to_picture
      t.text :article_preview

      t.timestamps null: false
    end
  end
end
