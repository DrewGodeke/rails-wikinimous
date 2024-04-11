class CreateWikiArticles < ActiveRecord::Migration[7.1]
  def change
    create_table :wiki_articles do |t|
      t.string :title
      t.text :content

      t.timestamps
    end
  end
end