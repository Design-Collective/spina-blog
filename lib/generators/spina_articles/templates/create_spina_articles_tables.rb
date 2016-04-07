class CreateSpinaArticlesTables < ActiveRecord::Migration
  def change
    create_table :spina_articles do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.date :publish_date
      t.boolean :draft, default: true
      t.references :spina_category
      t.timestamps
    end

    create_table :spina_categories do |t|
      t.string :title
      t.text :description
      t.timestamps
    end
  end
end
