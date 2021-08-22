class CreateArticlesSection < ActiveRecord::Migration[5.2]
  def change
    create_table :articles do |t|
      t.string :title, null: false
      t.string :author, null: false
      t.datetime :published_date, null: false
      t.text :article_text, null: false

      t.timestamps
    end
  end
end
