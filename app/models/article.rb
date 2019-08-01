class Article < ApplicationRecord
	include ImageAssociations
	
	belongs_to :user
	has_many :article_categories
	has_many :categories, through: :article_categories


	has_many :images, as: :imageable, dependent: :destroy

	validates :title, presence: true, length: {minimum: 3, maximum:50 }
	validates :description, presence: true, length: {minimum: 3, maximum:50 }
	validates :user_id, presence:true
end
