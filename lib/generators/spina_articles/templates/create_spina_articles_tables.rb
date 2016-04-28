class CreateSpinaArticlesTables < ActiveRecord::Migration
  def change
    create_table :spina_articles do |t|
      t.string :title
      t.string :subtitle
      t.text :content
      t.date :publish_date
      t.boolean :draft, default: true
      t.string :header_photo
      t.string :seo_title
      t.string :meta_description
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
