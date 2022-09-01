class Article < ApplicationRecord
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
	# belongs_to :category
	has_one_attached :avatar
	has_rich_text :body
end
