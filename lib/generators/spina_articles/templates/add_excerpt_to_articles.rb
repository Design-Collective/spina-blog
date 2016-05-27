class AddExcerptToArticles < ActiveRecord::Migration
  def change
    add_column :spina_articles, :excerpt, :text
  end
end
