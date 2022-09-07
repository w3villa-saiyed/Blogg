class Article < ApplicationRecord
	belongs_to :account
	has_one_attached :avatar
	validates :account_id, presence: true
	validates :title, presence: true
	validates :body, presence: true, length: { minimum: 10 }
	# belongs_to :category
	has_rich_text :body
end
