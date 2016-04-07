module Spina
  class Article < ActiveRecord::Base
    validates :title, :subtitle, :content, :publish_date, presence: true
    belongs_to :category
  end
end
